@echo off
set T_FILENAME="TR_Sector-90.tzx"
set S_FILENAME="Sector-90.tzx"
set SCRIPTNAME="sector90tzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
