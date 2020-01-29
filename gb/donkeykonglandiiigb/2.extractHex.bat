@echo off
set T_FILENAME="TR_Donkey Kong Land III (U) (V1.1) [S][!].gb"
set SCRIPTNAME="donkeykonglandiiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
