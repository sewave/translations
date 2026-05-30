import tkinter as tk
from tkinter import filedialog, messagebox, scrolledtext, ttk
import json
import re
import os

class TranslationManager:
    def __init__(self, root):
        self.root = root
        self.root.title("RPG Translation Suite")
        
        self.data = []
        self.current_sec_idx = 0
        self.current_ent_idx = 0
        self.current_file_path = None
        self.font_mono = ("Consolas", 11)

        self.create_menu()
        self.create_widgets()
        
        self.root.update_idletasks()
        self.root.geometry(f"{self.root.winfo_reqwidth()}x{self.root.winfo_reqheight()}")
        self.root.resizable(False, False)

    def create_menu(self):
        menubar = tk.Menu(self.root)
        file_menu = tk.Menu(menubar, tearoff=0)
        file_menu.add_command(label="Open JSON", command=self.load_file, accelerator="Ctrl+O")
        file_menu.add_command(label="Save", command=self.save_file, accelerator="Ctrl+S")
        file_menu.add_command(label="Save As...", command=self.save_file_as)
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.root.quit)
        
        edit_menu = tk.Menu(menubar, tearoff=0)
        edit_menu.add_command(label="Search Text", command=self.open_search_window, accelerator="Ctrl+F")
        edit_menu.add_command(label="Show Validation Errors", command=self.open_error_report, accelerator="Ctrl+E")
        
        menubar.add_cascade(label="File", menu=file_menu)
        menubar.add_cascade(label="Edit", menu=edit_menu)
        self.root.config(menu=menubar)

        self.root.bind("<Control-o>", lambda e: self.load_file())
        self.root.bind("<Control-s>", lambda e: self.save_file())
        self.root.bind("<Control-f>", lambda e: self.open_search_window())
        self.root.bind("<Control-e>", lambda e: self.open_error_report())

    def create_widgets(self):
        self.lbl_info = tk.Label(self.root, text="No file loaded", font=("Arial", 10, "bold"))
        self.lbl_info.pack(pady=5)

        self.lbl_original = tk.Label(self.root, text="Original Text (Raw - 0 bytes):")
        self.lbl_original.pack()
        self.txt_original = scrolledtext.ScrolledText(self.root, height=4, width=75, state='disabled', bg="#f0f0f0")
        self.txt_original.pack(pady=2, padx=10)

        self.lbl_translation = tk.Label(self.root, text="Translation (0 bytes):")
        self.lbl_translation.pack()

        self.trans_frame = tk.Frame(self.root, bd=2, relief="flat")
        self.trans_frame.pack(pady=5, padx=10)
        
        self.txt_translation = scrolledtext.ScrolledText(self.trans_frame, height=10, width=75, 
                                                       highlightthickness=2, font=self.font_mono)
        self.txt_translation.pack()
        
        self.txt_translation.bind("<KeyRelease>", self.on_text_change)
        self.txt_translation.bind("<<Selection>>", self.update_selection_length)

        self.lbl_selection = tk.Label(self.root, text="Selected text length: 0", fg="blue", font=("Arial", 9, "italic"))
        self.lbl_selection.pack()

        self.lbl_error_title = tk.Label(self.root, text="Validation Status:", font=("Arial", 9, "bold"))
        self.lbl_error_title.pack()
        
        self.error_list = scrolledtext.ScrolledText(self.root, height=4, width=75, state='disabled')
        self.error_list.pack(pady=2, padx=10)

        nav_frame = tk.Frame(self.root)
        nav_frame.pack(pady=5)
        tk.Button(nav_frame, text="<< Prev Sec", width=12, command=self.prev_section).grid(row=0, column=0, padx=5)
        tk.Button(nav_frame, text="< Prev Ent", width=12, command=self.prev_entry).grid(row=0, column=1, padx=5)
        tk.Button(nav_frame, text="Next Ent >", width=12, command=self.next_entry).grid(row=0, column=2, padx=5)
        tk.Button(nav_frame, text="Next Sec >>", width=12, command=self.next_section).grid(row=0, column=3, padx=5)

        goto_frame = tk.Frame(self.root)
        goto_frame.pack(pady=5)
        tk.Label(goto_frame, text="Go to Sec:").pack(side=tk.LEFT)
        self.ent_goto_sec = tk.Entry(goto_frame, width=5)
        self.ent_goto_sec.pack(side=tk.LEFT, padx=2)
        tk.Label(goto_frame, text="Ent:").pack(side=tk.LEFT)
        self.ent_goto_ent = tk.Entry(goto_frame, width=5)
        self.ent_goto_ent.pack(side=tk.LEFT, padx=2)
        tk.Button(goto_frame, text="Go", command=self.go_to).pack(side=tk.LEFT, padx=5)

    def mark_as_unsaved(self):
        title = self.root.title()
        if " (Saved)" in title:
            self.root.title(title.replace(" (Saved)", ""))

    def on_text_change(self, event=None):
        if event and event.keysym not in ('Left', 'Right', 'Up', 'Down', 'Control_L', 'Control_R', 'Shift_L', 'Shift_R'):
            self.mark_as_unsaved()
        self.validate_segments()
        self.update_byte_labels()

    def update_selection_length(self, event=None):
        try:
            selected_text = self.txt_translation.get(tk.SEL_FIRST, tk.SEL_LAST)
            clean = re.sub(r'\n(?=\{CHAR_)', '', selected_text)
            clean = clean.replace("^\n", "{PK}").replace("\n", "{L}")
            length = len(clean.replace("{PK}", " ").replace("{L}", " "))
            self.lbl_selection.config(text=f"Selected text length: {length}")
        except tk.TclError:
            self.lbl_selection.config(text="Selected text length: 0")

    def get_invalid_segments(self, text):
        clean = text.replace("^\n", "{PK}")
        clean = re.sub(r'\n(?=\{CHAR_)', '', clean)
        segments = re.split(r'\n|\{.*?\}', clean)
        return [s for s in segments if len(s) > 13 and s.strip()]

    def validate_segments(self):
        content = self.txt_translation.get("1.0", tk.END).strip()
        long_segments = self.get_invalid_segments(content)
        self.error_list.config(state='normal')
        self.error_list.delete("1.0", tk.END)
        if long_segments:
            self.txt_translation.config(highlightbackground="red", highlightcolor="red")
            self.error_list.config(bg="#ffecec")
            for s in long_segments: self.error_list.insert(tk.END, f"⚠️ ERROR ({len(s)} chars): \"{s}\"\n")
        else:
            self.txt_translation.config(highlightbackground="#2ecc71", highlightcolor="#2ecc71")
            self.error_list.config(bg="#e8f8f5")
            if content: self.error_list.insert(tk.END, "✅ All segments OK.")
        self.error_list.config(state='disabled')

    def update_byte_labels(self):
        if not self.data: return
        entry = self.data[self.current_sec_idx]["entries"][self.current_ent_idx]
        orig_raw = entry["original"]
        o_bytes = (len(re.findall(r'\{.*?\}', orig_raw)) + len(re.sub(r'\{.*?\}', '', orig_raw))) * 2
        self.lbl_original.config(text=f"Original Text (Raw - {o_bytes} bytes):")

        trans_ui = self.txt_translation.get("1.0", tk.END).rstrip('\n')
        t_conv = trans_ui.replace("^\n", "{PRESS_KEY}").replace("\n", "{LINE}")
        t_conv = re.sub(r'\{LINE\}(?=\{CHAR_)', '', t_conv)
        t_bytes = (len(re.findall(r'\{.*?\}', t_conv)) + len(re.sub(r'\{.*?\}', '', t_conv))) * 2
        self.lbl_translation.config(text=f"Translation ({t_bytes} bytes):")

    def save_current_translation(self):
        if self.data:
            content = self.txt_translation.get("1.0", tk.END).rstrip('\n')
            content = content.replace("^\n", "{PRESS_KEY}").replace("\n", "{LINE}")
            content = re.sub(r'\{LINE\}(?=\{CHAR_)', '', content)
            self.data[self.current_sec_idx]["entries"][self.current_ent_idx]["translation"] = content

    def update_ui(self):
        if not self.data: return
        entry = self.data[self.current_sec_idx]["entries"][self.current_ent_idx]
        self.lbl_info.config(text=f"Section: {self.current_sec_idx + 1}/{len(self.data)} | Entry: {self.current_ent_idx + 1}/{len(self.data[self.current_sec_idx]['entries'])}")
        self.txt_original.config(state='normal')
        self.txt_original.delete("1.0", tk.END)
        self.txt_original.insert(tk.END, entry["original"])
        self.txt_original.config(state='disabled')
        t = entry["translation"].replace("{PRESS_KEY}", "^\n").replace("{LINE}", "\n")
        t = re.sub(r'(?<!\n)\{CHAR_', r'\n{CHAR_', t)
        self.txt_translation.delete("1.0", tk.END)
        self.txt_translation.insert(tk.END, t)
        self.validate_segments()
        self.update_byte_labels()

    def load_file(self):
        path = filedialog.askopenfilename(filetypes=[("JSON files", "*.json")])
        if path:
            with open(path, 'r', encoding='utf-8') as f: self.data = json.load(f)
            self.current_file_path = path
            self.current_sec_idx = self.current_ent_idx = 0
            self.root.title(f"RPG Translation Suite - {os.path.basename(path)} (Saved)")
            self.update_ui()

    def save_file(self):
        if not self.data: return
        self.save_current_translation()
        with open(self.current_file_path, 'w', encoding='utf-8') as f: json.dump(self.data, f, indent=2, ensure_ascii=False)
        self.root.title(f"RPG Translation Suite - {os.path.basename(self.current_file_path)} (Saved)")

    def save_file_as(self):
        path = filedialog.asksaveasfilename(defaultextension=".json", filetypes=[("JSON files", "*.json")])
        if path: self.current_file_path = path; self.save_file()

    def prev_entry(self): self.save_current_translation(); self.current_ent_idx = max(0, self.current_ent_idx - 1); self.update_ui()
    def next_entry(self): self.save_current_translation(); self.current_ent_idx = min(len(self.data[self.current_sec_idx]["entries"])-1, self.current_ent_idx + 1); self.update_ui()
    def prev_section(self): self.save_current_translation(); self.current_sec_idx = max(0, self.current_sec_idx - 1); self.current_ent_idx = 0; self.update_ui()
    def next_section(self): self.save_current_translation(); self.current_sec_idx = min(len(self.data)-1, self.current_sec_idx + 1); self.current_ent_idx = 0; self.update_ui()
    
    def go_to(self):
        try:
            s, e = int(self.ent_goto_sec.get())-1, int(self.ent_goto_ent.get())-1
            if 0 <= s < len(self.data) and 0 <= e < len(self.data[s]["entries"]):
                self.save_current_translation(); self.current_sec_idx, self.current_ent_idx = s, e; self.update_ui()
        except: pass

    def open_search_window(self):
        if not self.data: return
        win = tk.Toplevel(self.root); win.title("Search"); win.geometry("700x450")
        ent = tk.Entry(win); ent.pack(fill=tk.X, padx=10, pady=5); ent.focus_set()
        frame = tk.Frame(win); frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        tree = ttk.Treeview(frame, columns=("s", "e", "o", "t"), show="headings")
        for c, h in zip(("s", "e", "o", "t"), ("S", "E", "Original", "Translation")): tree.heading(c, text=h)
        tree.column("s", width=40); tree.column("e", width=40)
        sb = ttk.Scrollbar(frame, orient="vertical", command=tree.yview); tree.configure(yscrollcommand=sb.set)
        tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True); sb.pack(side=tk.RIGHT, fill=tk.Y)
        def search(ev=None):
            q = ent.get().lower(); tree.delete(*tree.get_children())
            for si, s in enumerate(self.data):
                for ei, e in enumerate(s["entries"]):
                    if q in e["original"].lower() or q in e["translation"].lower():
                        tree.insert("", "end", values=(si+1, ei+1, e["original"][:40], e["translation"][:40]), tags=(si, ei))
        ent.bind("<Return>", search); tree.bind("<Double-1>", lambda e: self.jump(tree, win))

    def open_error_report(self):
        if not self.data: return
        win = tk.Toplevel(self.root); win.title("Global Validation Errors"); win.geometry("600x400")
        frame = tk.Frame(win); frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        tree = ttk.Treeview(frame, columns=("s", "e", "m"), show="headings")
        for c, h in zip(("s", "e", "m"), ("S", "E", "Longest Problematic Segment")): tree.heading(c, text=h)
        tree.column("s", width=40); tree.column("e", width=40)
        sb = ttk.Scrollbar(frame, orient="vertical", command=tree.yview); tree.configure(yscrollcommand=sb.set)
        tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True); sb.pack(side=tk.RIGHT, fill=tk.Y)
        for si, s in enumerate(self.data):
            for ei, e in enumerate(s["entries"]):
                v = e["translation"].replace("{PRESS_KEY}", "^\n").replace("{LINE}", "\n")
                errs = self.get_invalid_segments(v)
                if errs: tree.insert("", "end", values=(si+1, ei+1, max(errs, key=len)), tags=(si, ei))
        tree.bind("<Double-1>", lambda e: self.jump(tree, win))

    def jump(self, tree, win):
        if not tree.selection(): return
        self.save_current_translation()
        s, e = map(int, tree.item(tree.selection()[0], "tags"))
        self.current_sec_idx, self.current_ent_idx = s, e
        self.update_ui(); win.destroy()

if __name__ == "__main__":
    root = tk.Tk(); app = TranslationManager(root); root.mainloop()