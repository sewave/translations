@echo off
set T_FILENAME="TR_The_Dark_Lost_Pages.tap"
set S_FILENAME="The_Dark_Lost_Pages.tap"
set SCRIPTNAME="thedarklostpagestap"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
