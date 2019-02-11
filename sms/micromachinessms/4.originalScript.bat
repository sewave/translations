@echo off
set T_FILENAME="Micro Machines (E) [!].sms"
set SCRIPTNAME="micromachinessms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
