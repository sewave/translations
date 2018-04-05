@echo off
set T_FILENAME="TR_Animaniacs (U) [!].smc"
set SCRIPTNAME="animaniacssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
