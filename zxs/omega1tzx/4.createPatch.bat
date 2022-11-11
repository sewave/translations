@echo off
set T_FILENAME="TR_Omega 1.tzx"
set S_FILENAME="Omega 1.tzx"
set SCRIPTNAME="omega1tzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
