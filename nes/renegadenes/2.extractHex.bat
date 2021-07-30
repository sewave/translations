@echo off
set T_FILENAME="TR_Renegade (USA).nes"
set SCRIPTNAME="renegadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F2DF:8,BB10:70
pause
