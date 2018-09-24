@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gb"
set SCRIPTNAME="earthwormjimgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
