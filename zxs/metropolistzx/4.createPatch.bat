@echo off
set T_FILENAME="TR_Metropolis - Loading Screen Fix.tzx"
set S_FILENAME="Metropolis - Loading Screen Fix.tzx"
set SCRIPTNAME="metropolistzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
