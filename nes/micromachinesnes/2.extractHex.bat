@echo off
set T_FILENAME="TR_Micro Machines (Camerica) [!].nes"
set SCRIPTNAME="micromachinesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
