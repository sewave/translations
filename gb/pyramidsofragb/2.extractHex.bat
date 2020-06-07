@echo off
set T_FILENAME="TR_Pyramids of Ra (U).gb"
set SCRIPTNAME="pyramidsofragb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
