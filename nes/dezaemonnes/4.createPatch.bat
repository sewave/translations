@echo off
set T_FILENAME="TR_Dezaemon (Japan) [T+ENG].nes"
set S_FILENAME="Dezaemon (Japan).nes"
set SCRIPTNAME="dezaemonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
