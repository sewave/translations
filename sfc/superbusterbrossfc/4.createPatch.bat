@echo off
set T_FILENAME="TR_Super Buster Bros. (U) (V1.1).smc"
set S_FILENAME="Super Buster Bros. (U) (V1.1).smc"
set SCRIPTNAME="superbusterbrossfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
