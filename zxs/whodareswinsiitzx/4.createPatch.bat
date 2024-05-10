@echo off
set T_FILENAME="TR_Who Dares Wins II.tzx"
set S_FILENAME="Who Dares Wins II.tzx"
set SCRIPTNAME="whodareswinsiitzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
