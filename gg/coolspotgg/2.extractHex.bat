@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gg"
set SCRIPTNAME="coolspotgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
