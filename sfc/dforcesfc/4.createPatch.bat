@echo off
set T_FILENAME="TR_D-Force (USA).sfc"
set S_FILENAME="D-Force (USA).sfc"
set SCRIPTNAME="dforcesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
