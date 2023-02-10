@echo off
set T_FILENAME="TR_Zub.tzx"
set S_FILENAME="Zub.tzx"
set SCRIPTNAME="zubtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
