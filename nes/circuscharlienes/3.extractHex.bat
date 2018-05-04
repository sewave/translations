@echo off
set T_FILENAME="TR_Circus Charlie (J) [!].nes"
set SCRIPTNAME="circuscharlienes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 57C0:10,4450:10
pause
