@echo off
set T_FILENAME="TR_Penguin-kun Wars (Japan).nes"
set SCRIPTNAME="penguinkunwarsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
