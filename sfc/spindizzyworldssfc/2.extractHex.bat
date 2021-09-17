@echo off
set T_FILENAME="TR_Spindizzy Worlds (USA).sfc"
set SCRIPTNAME="spindizzyworldssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 84030:80,84630:80,84730:80
pause
