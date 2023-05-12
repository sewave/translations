@echo off
set T_FILENAME="TR_Cobra Force.tzx"
set SCRIPTNAME="cobraforcetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
