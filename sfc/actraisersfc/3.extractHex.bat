@echo off
set T_FILENAME="TR_ActRaiser (J) [T+ENG].smc"
set SCRIPTNAME="actraisersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E55B0-E55F0,000E5220-000E527F
pause
