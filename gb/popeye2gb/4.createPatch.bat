@echo off
set T_FILENAME="TR_Popeye 2 (USA).gb"
set S_FILENAME="Popeye 2 (USA).gb"
set SCRIPTNAME="popeye2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
