@echo off
set T_FILENAME="TR_Lemmings 2 - The Tribes (Unknown) (Proto).sms"
set SCRIPTNAME="lemmings2thetribessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
