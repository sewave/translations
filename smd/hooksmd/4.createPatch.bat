@echo off
set T_FILENAME="TR_Hook (USA).md"
set S_FILENAME="Hook (USA).md"
set SCRIPTNAME="hooksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
