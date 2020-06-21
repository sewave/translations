@echo off
set T_FILENAME="TR_Tumble Pop (U) [!].gb"
set SCRIPTNAME="tumblepopgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
