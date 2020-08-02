@echo off
set T_FILENAME="TR_Catrap (U) [!].gb"
set SCRIPTNAME="catrapgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
