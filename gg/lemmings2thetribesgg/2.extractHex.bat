@echo off
set T_FILENAME="TR_Lemmings 2 - The Tribes (Unknown) (Proto).gg"
set SCRIPTNAME="lemmings2thetribesgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
