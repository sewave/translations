@echo off
set T_FILENAME="TR_MotorCity Patrol (USA).nes"
set SCRIPTNAME="motorcitypatrolnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23020:60,231C0:30,281C0:30,283C0:60
pause
