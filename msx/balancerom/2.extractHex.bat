@echo off
set T_FILENAME="TR_Balance (1984) (Hal) (J).rom"
set SCRIPTNAME="balancerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
