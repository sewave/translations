@echo off
set T_FILENAME="TR_Circus Lido (Japan).pce"
set SCRIPTNAME="circuslidopce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38C00:100
pause
