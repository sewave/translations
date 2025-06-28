@echo off
set T_FILENAME="TR_Dahna - Megami Tanjou (Japan) [T+ENG].md"
set S_FILENAME="Dahna - Megami Tanjou (Japan).md"
set SCRIPTNAME="dahnamegamitanjousmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
