@echo off
set T_FILENAME="TR_Riddick Bowe Boxing (USA).gb"
set SCRIPTNAME="riddickboweboxinggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
