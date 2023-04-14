@echo off
set T_FILENAME="TR_One Man And His Droid.tzx"
set S_FILENAME="One Man And His Droid.tzx"
set SCRIPTNAME="onemanandhisdroidtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
