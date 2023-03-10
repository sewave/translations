@echo off
set T_FILENAME="TR_AirForce Delta (USA).gbc"
set S_FILENAME="AirForce Delta (USA).gbc"
set SCRIPTNAME="airforcedeltagbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
