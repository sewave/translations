@echo off
set T_FILENAME="TR_Mega Man (USA).nes"
set SCRIPTNAME="megamannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3670:50,39F0:10,3AB0:60,AC80:10,3560:70
pause
