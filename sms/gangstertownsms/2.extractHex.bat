@echo off
set T_FILENAME="TR_Gangster Town (UE) [!].sms"
set SCRIPTNAME="gangstertownsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
