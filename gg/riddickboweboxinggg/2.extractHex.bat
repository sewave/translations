@echo off
set T_FILENAME="TR_Riddick Bowe Boxing (USA).gg"
set SCRIPTNAME="riddickboweboxinggg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
