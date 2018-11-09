@echo off
set T_FILENAME="TR_Chuck Rock (U) [!].gg"
set SCRIPTNAME="chuckrockgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
