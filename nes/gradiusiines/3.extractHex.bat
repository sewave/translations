@echo off
set T_FILENAME="TR_Gradius II (J) [!].nes"
set SCRIPTNAME="gradiusiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26A60-26C60,34CD0-354D0
pause
