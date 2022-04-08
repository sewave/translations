@echo off
set T_FILENAME="TR_River City Ransom (USA).nes"
set S_FILENAME="River City Ransom (USA).nes"
set SCRIPTNAME="rivercityransomnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
