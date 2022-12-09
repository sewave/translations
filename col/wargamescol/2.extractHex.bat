@echo off
set T_FILENAME="TR_War Games (1983-84).col"
set SCRIPTNAME="wargamescol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
