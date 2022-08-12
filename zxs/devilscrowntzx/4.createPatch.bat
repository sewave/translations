@echo off
set T_FILENAME="TR_Devil's Crown.tzx"
set S_FILENAME="Devil's Crown.tzx"
set SCRIPTNAME="devilscrowntzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
