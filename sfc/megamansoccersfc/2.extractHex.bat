@echo off
set T_FILENAME="TR_Mega Man Soccer (USA).sfc"
set SCRIPTNAME="megamansoccersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
