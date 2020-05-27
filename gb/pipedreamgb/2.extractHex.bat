@echo off
set T_FILENAME="TR_Pipe Dream (U) [!].gb"
set SCRIPTNAME="pipedreamgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
