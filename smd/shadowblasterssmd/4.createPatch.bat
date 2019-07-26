@echo off
set T_FILENAME="TR_Shadow Blasters (U) [c][!].bin"
set S_FILENAME="Shadow Blasters (U) [c][!].bin"
set SCRIPTNAME="shadowblasterssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
