@echo off
set T_FILENAME="TR_Master Shooter (Asia) (Unl).nes"
set SCRIPTNAME="mastershooternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FE0:10,9190:80,B190:80,D190:80,F190:80,CBB0:80,CF50:10
pause
