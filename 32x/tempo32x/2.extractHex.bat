@echo off
set T_FILENAME="TR_Tempo (Japan, USA).32x"
set SCRIPTNAME="tempo32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
