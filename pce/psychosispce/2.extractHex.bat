@echo off
set T_FILENAME="TR_Psychosis (U).pce"
set SCRIPTNAME="psychosispce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
