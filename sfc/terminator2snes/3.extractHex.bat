@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (U) [!].smc"
set SCRIPTNAME="terminator2snes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
