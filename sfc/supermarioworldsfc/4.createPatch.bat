@echo off
set T_FILENAME="TR_Super Mario World (U) [!].smc"
set S_FILENAME="Super Mario World (U) [!].smc"
set SCRIPTNAME="supermarioworldsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
