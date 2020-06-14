@echo off
set T_FILENAME="TR_Cliffhanger (U).smc"
set S_FILENAME="Cliffhanger (U).smc"
set SCRIPTNAME="cliffhangersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
