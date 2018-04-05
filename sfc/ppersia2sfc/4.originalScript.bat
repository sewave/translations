@echo off
set T_FILENAME="Prince of Persia 2 - The Shadow & The Flame (U).smc"
set SCRIPTNAME="ppersia2sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
