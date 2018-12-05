@echo off
set T_FILENAME="TR_Ms. Pac-Man (U).smc"
set SCRIPTNAME="mspacmansfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
