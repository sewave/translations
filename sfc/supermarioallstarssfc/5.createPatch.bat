@echo off
set T_FILENAME="TR_Super Mario All-Stars (U) [!].smc"
set S_FILENAME="Super Mario All-Stars (U) [!].smc"
set SCRIPTNAME="supermarioallstarssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
