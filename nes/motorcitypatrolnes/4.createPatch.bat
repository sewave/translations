@echo off
set T_FILENAME="TR_MotorCity Patrol (USA).nes"
set S_FILENAME="MotorCity Patrol (USA).nes"
set SCRIPTNAME="motorcitypatrolnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
