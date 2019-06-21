@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U).smc"
set SCRIPTNAME="terminator2arcadesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
