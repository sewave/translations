@echo off
set T_FILENAME="TR_Aquattack (1984) (Toshiba Emi) (J).rom"
set S_FILENAME="Aquattack (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="aquattackrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
