@echo off
set T_FILENAME="TR_Tanque (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Tanque (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="tanquenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
