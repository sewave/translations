@echo off
set T_FILENAME="TR_Chuck Rock (U) [!].gb"
set SCRIPTNAME="chuckrockgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
