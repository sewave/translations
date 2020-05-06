@echo off
set T_FILENAME="TR_Last Action Hero (U).smc"
set S_FILENAME="Last Action Hero (U).smc"
set SCRIPTNAME="lastactionherosfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
