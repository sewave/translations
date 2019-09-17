@echo off
set T_FILENAME="TR_Soldiers of Fortune (U) [!].smc"
set S_FILENAME="Soldiers of Fortune (U) [!].smc"
set SCRIPTNAME="soldiersoffortunesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
