@echo off
set T_FILENAME="MotorCity Patrol (USA).nes"
set SCRIPTNAME="motorcitypatrolnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
