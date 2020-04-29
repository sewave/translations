@echo off
set T_FILENAME="TR_Spot (U) [!].gb"
set SCRIPTNAME="spotgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
