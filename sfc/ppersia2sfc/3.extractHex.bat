@echo off
set T_FILENAME="TR_Prince of Persia 2 - The Shadow & The Flame (U).smc"
set SCRIPTNAME="ppersia2sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
