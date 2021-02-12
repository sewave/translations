@echo off
set T_FILENAME="TR_The Evil Dead.tzx"
set S_FILENAME="The Evil Dead.tzx"
set SCRIPTNAME="theevildeadtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
