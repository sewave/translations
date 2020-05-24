@echo off
set T_FILENAME="TR_Home Alone 2 - Lost in New York (U).smc"
set SCRIPTNAME="homealone2lostinnewyorksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
