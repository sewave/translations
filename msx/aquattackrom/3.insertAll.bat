@echo off
set T_FILENAME="TR_Aquattack (1984) (Toshiba Emi) (J).rom"
set S_FILENAME="Aquattack (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="aquattackrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
