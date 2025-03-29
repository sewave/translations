@echo off
set T_FILENAME="TR_Judge Dredd.tzx"
set S_FILENAME="Judge Dredd.tzx"
set SCRIPTNAME="judgedreddtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
