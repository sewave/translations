@echo off
set T_FILENAME="TR_Vixen 357 (Japan) [T+ENG].md"
set S_FILENAME="Vixen 357 (Japan).md"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
