@echo off
set T_FILENAME="TR_Mystic Defender (USA, Europe) (Rev A).md"
set S_FILENAME="Mystic Defender (USA, Europe) (Rev A).md"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
