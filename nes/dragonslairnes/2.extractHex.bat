@echo off
set T_FILENAME="TR_Dragon's Lair (U) [!].nes"
set SCRIPTNAME="dragonslairnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
