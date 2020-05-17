@echo off
set T_FILENAME="TR_Superman (U) [S][!].gb"
set SCRIPTNAME="supermangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
