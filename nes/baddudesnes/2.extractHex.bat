@echo off
set T_FILENAME="TR_Bad Dudes (USA).nes"
set SCRIPTNAME="baddudesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 214A0:20,22CD0:40,2D310:80,36380:30
pause
