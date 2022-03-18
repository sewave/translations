@echo off
set T_FILENAME="TR_Karnov (Japan) (Rev 1) [T+ENG].nes"
set S_FILENAME="Karnov (Japan) (Rev 1).nes"
set SCRIPTNAME="karnovjapnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
