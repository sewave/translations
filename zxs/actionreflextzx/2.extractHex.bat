@echo off
set T_FILENAME="TR_Action Reflex.tzx"
set SCRIPTNAME="actionreflextzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F80:8
pause
