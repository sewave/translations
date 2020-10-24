@echo off
set T_FILENAME="TR_Daffy Duck - The Marvin Missions (USA).sfc"
set S_FILENAME="Daffy Duck - The Marvin Missions (USA).sfc"
set SCRIPTNAME="daffyduckthemarvinmissionssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
