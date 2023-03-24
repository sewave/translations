@echo off
set T_FILENAME="TR_Glider Rider.tzx"
set S_FILENAME="Glider Rider.tzx"
set SCRIPTNAME="gliderridertzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
