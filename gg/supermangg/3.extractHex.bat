@echo off
set T_FILENAME="TR_Superman (U) [!].gg"
set SCRIPTNAME="supermangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
