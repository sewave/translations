@echo off
set T_FILENAME="TR_Valley_of_Rains.tap"
set S_FILENAME="Valley_of_Rains.tap"
set SCRIPTNAME="valleyofrainstap"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
