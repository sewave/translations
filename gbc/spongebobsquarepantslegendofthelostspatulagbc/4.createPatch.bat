@echo off
set T_FILENAME="TR_SpongeBob SquarePants - Legend of the Lost Spatula (USA, Europe).gbc"
set S_FILENAME="SpongeBob SquarePants - Legend of the Lost Spatula (USA, Europe).gbc"
set SCRIPTNAME="spongebobsquarepantslegendofthelostspatulagbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
