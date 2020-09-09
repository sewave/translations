@echo off
set T_FILENAME="TR_Panel Action Bingo (USA).gb"
set SCRIPTNAME="panelactionbingogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6BC0:30,6DB0:50,ADC0:30,AFB0:50
pause
