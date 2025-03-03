------------------------------------------------------

Nombre:			HexString
Autor:			koda
Latest Version:  	1.1.0
URL:			https://traduccioneskoda.blogspot.com/
				https://github.com/KodingBTW/hexstring
Last Update:	03/12/2024

------------------------------------------------------
1 - WHAT'S THIS?
------------------------------------------------------

HexString allows you to dump the text of a ROM, then 
reinsert it in order to modify and translate it into 
other languages. By providing the correct parameters, 
this program will also modify the pointer table. This 
automates the entire process, and you only need to 
focus on translating.

------------------------------------------------------
2 - WHAT'S NEW
------------------------------------------------------
V1.2.0
- Now empty line before linebreaker are corrected
readed.

- You can replace linbreaker for text end offset
and the program will split text with the pointer
table.

- 4 bytes pointer are correctly interpreted.

V1.1.0

Bugs Fixed:
- If you split the text when editing, it was 
misinterpreted by the encoder as a new pointer. 
(Thanks to Wave).

- The text block counter function is now smarter. 
If two pointers point to the same text it will be 
counted only once.

New features:
- Added text comments, use ";" at begining of a new 
line. (it still can be used at character)

- line with @ or | will be ignore too

- Now more exceptions are handled, and an error 
text will be displayed giving more information.

- Characters not found in the .tbl file will now be 
printed in the following ~hex~ format. (The "~" symbol
is reserved, and will be ignored if used in the 
tbl).

-In the same way when encoding, if ~hex~ is found
it will be encoded with its corresponding hex form. 
If any character in the text is not assigned to the 
dictionary, it will be copied into its ASCCI format.

- Added support for pointers of other formats and 
lengths.
	2bytes little endian
	2bytes big endian
	2bytes splitted (lsb-msb)
	3bytes (gba format)
	4bytes (mega drive - big endian)

- Now when decoding the text, a comment will be 
automatically created that contains: the address of 
the line, a copy of the text, character length.

- Added previous pointer copy functionality, just 
deletes the line and adds the "&" character to the 
start of the line, then add his line breaker. The
pointer will be the same as the previous one, very 
useful if several pointers point to the same line.

V1.0.0
- Decoding ROM Data.
- Encoding binary files.
- Automatic updates pointers table (Only 2 bytes).
- Support .tbl dictionaries.
- Support for DTE/MTE enconding/decoding.
- Support Latin1 characters.

------------------------------------------------------
3 - HOW TO USE IT?
------------------------------------------------------

To decode:

Use the Windows console and type -d, then fill in the 
arguments:

- pointersFormat:

	-2b   --2bytes "little endian"
	-2bb  --2bytes "big endian"
	-2bs  --2bytes "splitted lsb-msb"
	-3b   --3bytes "(bank/2bytespointer) gba format"
	-4b   --4bytes "Mega drive games little endian"

- romFile: ROM file name.

- pointersStartAddress: Address where the pointer table 
begins.

- pointerTableSize: Size of the pointers, in hexadecimal.

- headerSize: The size of the header 

Formula: Text Address for the pointer - pointer inverted
(little endian case)

Example: for Goof Troop (U).snes

The pointer format are 2bytes little endian, so the
pointer is "81 E8", the text address is "0x05E881", so
if you use the formula: 5E881 - E881 = 0x50000

- lineBreaker: Code used in the ROM to break the text 
strings, e.g., 0x00 or 0xFF. (If there is more than 
one, separate with commas).
- outFile: Output file, it can be a .bin or .txt file.

- tblFile: (optional) If provided, it decodes using a 
.tbl file; otherwise, it uses ASCII.
Para codificar:

Then edit the output file with your favorite text editor
(I recommend Notepad++).


To encode:

Use the Windows console and type -e, then fill in the 
arguments:

- pointersFormat:

	-2b   --2bytes "little endian"
	-2bb  --2bytes "big endian"
	-2bs  --2bytes "splitted lsb-msb"
	-3b   --3bytes "(bank/2bytespointer) gba format"
	-4b   --4bytes "Mega drive games little endian"

- textFile: File with the text.

- textStartAddress: Address where the text block begins.

- textSize: Size of the text block, in hexadecimal.

- pointersStartAddress: Address where the pointer table 
begins.

- headerSize: The same decoder formula.

- romFile: ROM file name.

- tblFile: (optional) If provided, it decodes using a .tbl
file; otherwise, it uses ASCII.

Tips:

-To avoid typing the arguments repeatedly, I recommend 
creating a .bat file for quicker operation.

-Before you begin, it's recommended to make a copy of the
 ROM and back up any progress you have.
 
-Before starting to translate, once the text has been 
extracted, reinsert it again. This will help you know 
if you are giving the right arguments. You can also use 
a hexagecimal comparator and compare it with a made copy.

- If when inserting the text you enter it is greater 
than the block. You have three options, reduce the text, 
find an empty space, or expand the rom.

------------------------------------------------------
4 - TO DO:
------------------------------------------------------

- Possibly add new algorithms for new pointer formats.

- A graphical interface—unlikely, as it requires a 
lot of work, which I don't have time for right now.