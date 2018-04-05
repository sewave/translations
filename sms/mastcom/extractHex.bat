@echo off 
set T_FILENAME="TR_Masters of Combat (E) [!].sms"
set SCRIPTNAME="mastcom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
