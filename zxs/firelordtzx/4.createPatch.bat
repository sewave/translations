@echo off
set T_FILENAME="TR_Firelord.tzx"
set S_FILENAME="Firelord.tzx"
set SCRIPTNAME="firelordtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
