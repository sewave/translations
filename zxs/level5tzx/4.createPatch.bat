@echo off
set T_FILENAME="TR_Level 5.tzx"
set S_FILENAME="Level 5.tzx"
set SCRIPTNAME="level5tzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
