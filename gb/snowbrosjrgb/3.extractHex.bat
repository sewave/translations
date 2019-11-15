@echo off
set T_FILENAME="TR_Snow Bros. Jr. (U) [!].gb"
set SCRIPTNAME="snowbrosjrgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
