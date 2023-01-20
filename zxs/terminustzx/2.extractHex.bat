@echo off
set T_FILENAME="TR_Terminus.tzx"
set SCRIPTNAME="terminustzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3BC3:8,2D73:80,9A90:40
pause
