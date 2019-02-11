@echo off
set T_FILENAME="TR_Micro Machines (E).gg"
set SCRIPTNAME="micromachinesgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
