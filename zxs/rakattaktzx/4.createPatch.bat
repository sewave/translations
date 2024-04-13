@echo off
set T_FILENAME="TR_Rakattak.tzx"
set S_FILENAME="Rakattak.tzx"
set SCRIPTNAME="rakattaktzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
