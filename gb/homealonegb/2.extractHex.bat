@echo off
set T_FILENAME="TR_Home Alone (U) [!].gb"
set SCRIPTNAME="homealonegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
