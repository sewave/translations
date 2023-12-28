@echo off
set T_FILENAME="TR_Riddick Bowe Boxing (USA).sfc"
set SCRIPTNAME="riddickboweboxingsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
