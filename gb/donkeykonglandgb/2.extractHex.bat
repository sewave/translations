@echo off
set T_FILENAME="TR_Donkey Kong Land (U) [S][!].gb"
set SCRIPTNAME="donkeykonglandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
