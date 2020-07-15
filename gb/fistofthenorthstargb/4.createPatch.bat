@echo off
set T_FILENAME="TR_Fist of the North Star (USA).gb"
set S_FILENAME="Fist of the North Star (USA).gb"
set SCRIPTNAME="fistofthenorthstargb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
