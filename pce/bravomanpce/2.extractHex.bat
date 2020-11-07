@echo off
set T_FILENAME="TR_Bravoman (USA).pce"
set SCRIPTNAME="bravomanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41560:100
pause
