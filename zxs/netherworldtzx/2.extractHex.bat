@echo off
set T_FILENAME="TR_Netherworld.tzx"
set SCRIPTNAME="netherworldtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
