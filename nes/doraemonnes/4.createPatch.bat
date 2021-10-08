@echo off
set T_FILENAME="TR_Doraemon (Japan) (Rev A) [T+ENG].nes"
set S_FILENAME="Doraemon (Japan) (Rev A).nes"
set SCRIPTNAME="doraemonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
