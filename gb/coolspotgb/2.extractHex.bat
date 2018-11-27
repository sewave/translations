@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gb"
set SCRIPTNAME="coolspotgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
