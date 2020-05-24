@echo off
set T_FILENAME="TR_Home Alone 2 (U) [!].gb"
set SCRIPTNAME="homealone2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
