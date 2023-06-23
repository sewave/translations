@echo off
set T_FILENAME="TR_MotorCity Patrol (USA).nes"
set S_FILENAME="MotorCity Patrol (USA).nes"
set SCRIPTNAME="motorcitypatrolnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
