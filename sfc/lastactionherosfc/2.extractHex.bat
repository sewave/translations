@echo off
set T_FILENAME="TR_Last Action Hero (U).smc"
set SCRIPTNAME="lastactionherosfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
