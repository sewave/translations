@echo off
set T_FILENAME="TR_Prince of Persia 2 - The Shadow & The Flame (U).smc"
set S_FILENAME="Prince of Persia 2 - The Shadow & The Flame (U).smc"
set SCRIPTNAME="ppersia2sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
