@echo off
set T_FILENAME="TR_Batman - Return of the Joker (U) [!].nes"
set SCRIPTNAME="batmanreturnofthejokernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 52010:800,2E470:20,2E570:20,2E670:20,2E770:20,2E6F0:20,2E7F0:20
pause
