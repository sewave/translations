@echo off
set T_FILENAME="Aquattack (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="aquattackrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
