@echo off
set T_FILENAME="TR_Congo's Caper (USA).sfc"
set S_FILENAME="Congo's Caper (USA).sfc"
set SCRIPTNAME="congoscapersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
