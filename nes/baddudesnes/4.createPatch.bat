@echo off
set T_FILENAME="TR_Bad Dudes (USA).nes"
set S_FILENAME="Bad Dudes (USA).nes"
set SCRIPTNAME="baddudesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
