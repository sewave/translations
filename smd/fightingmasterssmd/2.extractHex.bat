@echo off
set T_FILENAME="TR_Fighting Masters (U) [!].bin"
set SCRIPTNAME="fightingmasterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
