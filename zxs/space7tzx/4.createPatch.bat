@echo off
set T_FILENAME="TR_SPACE7.TZX"
set S_FILENAME="SPACE7.TZX"
set SCRIPTNAME="space7tzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
