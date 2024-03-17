@echo off
set T_FILENAME="TR_A.T.A.C.tzx"
set S_FILENAME="A.T.A.C.tzx"
set SCRIPTNAME="atactzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
