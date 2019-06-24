@echo off
set T_FILENAME="TR_Cobra Command (U) [!].nes"
set SCRIPTNAME="cobracommandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 35310:80,326A0:10,327A0:10,34F20:20
pause
