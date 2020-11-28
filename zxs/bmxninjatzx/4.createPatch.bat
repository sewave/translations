@echo off
set T_FILENAME="TR_BMX Ninja (Alternative).tzx"
set S_FILENAME="BMX Ninja (Alternative).tzx"
set SCRIPTNAME="bmxninjatzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
