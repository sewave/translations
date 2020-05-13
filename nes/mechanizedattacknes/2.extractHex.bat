@echo off
set T_FILENAME="TR_Mechanized Attack (U) [!].nes"
set SCRIPTNAME="mechanizedattacknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2E5B0:10,10290:20,10310:80
pause
