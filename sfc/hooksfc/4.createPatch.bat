@echo off
set T_FILENAME="TR_Hook (USA).sfc"
set S_FILENAME="Hook (USA).sfc"
set SCRIPTNAME="hooksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
