@echo off
set T_FILENAME="TR_Pescatore (Japan) (Proto).nes"
set S_FILENAME="Pescatore (Japan) (Proto).nes"
set SCRIPTNAME="pescatorenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
