@echo off
set T_FILENAME="TR_Blood 'n' Guts.tzx"
set S_FILENAME="Blood 'n' Guts.tzx"
set SCRIPTNAME="bloodngutstzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
