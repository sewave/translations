@echo off
set T_FILENAME="TR_Fire 'n Ice (USA).nes"
set S_FILENAME="Fire 'n Ice (USA).nes"
set SCRIPTNAME="firenicenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
