@echo off
set T_FILENAME="TR_Cyraid (U) [!].gb"
set SCRIPTNAME="cyraidgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
