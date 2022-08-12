@echo off
set T_FILENAME="TR_Agent - X.tzx"
set S_FILENAME="Agent - X.tzx"
set SCRIPTNAME="agentxtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
