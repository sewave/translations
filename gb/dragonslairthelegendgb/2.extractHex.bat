@echo off
set T_FILENAME="TR_Dragon's Lair - The Legend (U) [!].gb"
set SCRIPTNAME="dragonslairthelegendgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
