@echo off
set T_FILENAME="TR_Ultimate Combat Mission.tzx"
set S_FILENAME="Ultimate Combat Mission.tzx"
set SCRIPTNAME="ultimatecombatmissiontzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
