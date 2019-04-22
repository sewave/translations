@echo off
set T_FILENAME="TR_Air Fortress (U) [!].nes"
set SCRIPTNAME="airfortressnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20610:80
pause
