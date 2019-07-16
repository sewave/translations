@echo off
set T_FILENAME="TR_Rushing Beat (J) [T+ENG].smc"
set S_FILENAME="Rushing Beat (J) [!].smc"
set SCRIPTNAME="rushingbeatsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
