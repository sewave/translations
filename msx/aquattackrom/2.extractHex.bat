@echo off
set T_FILENAME="TR_Aquattack (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="aquattackrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
