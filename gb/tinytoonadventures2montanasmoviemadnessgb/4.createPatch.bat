@echo off
set T_FILENAME="TR_Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set S_FILENAME="Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set SCRIPTNAME="tinytoonadventures2montanasmoviemadnessgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
