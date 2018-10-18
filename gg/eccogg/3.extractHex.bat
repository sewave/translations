@echo off
set T_FILENAME="TR_Ecco the Dolphin (U) [!].gg"
set SCRIPTNAME="eccogg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
