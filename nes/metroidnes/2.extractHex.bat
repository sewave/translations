@echo off
set T_FILENAME="TR_Metroid (USA).nes"
set SCRIPTNAME="metroidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18590:20,1B710:90,19670:20,4D90:40,4FB0:C0
pause
