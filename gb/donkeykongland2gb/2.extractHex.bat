@echo off
set T_FILENAME="TR_Donkey Kong Land 2 (UE) [S][!].gb"
set SCRIPTNAME="donkeykongland2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
