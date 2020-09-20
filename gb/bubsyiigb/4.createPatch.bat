@echo off
set T_FILENAME="TR_Bubsy II (USA).gb"
set S_FILENAME="Bubsy II (USA).gb"
set SCRIPTNAME="bubsyiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
