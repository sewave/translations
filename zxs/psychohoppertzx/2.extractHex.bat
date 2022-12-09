@echo off
set T_FILENAME="TR_Psycho Hopper.tzx"
set SCRIPTNAME="psychohoppertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
