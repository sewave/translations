@echo off
set T_FILENAME="TR_Wanted - Monty Mole.tzx"
set SCRIPTNAME="wantedmontymoletzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42FC:8
pause
