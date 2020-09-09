@echo off
set T_FILENAME="TR_Micro Machines 2 - Turbo Tournament (Europe).sfc"
set SCRIPTNAME="micromachines2turbotournamentsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
