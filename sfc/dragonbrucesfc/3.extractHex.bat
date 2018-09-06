@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (U).smc"
set SCRIPTNAME="dragonbrucesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
