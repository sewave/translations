@echo off
set T_FILENAME="TR_Blackthorne (USA).sfc"
set S_FILENAME="Blackthorne (USA).sfc"
set SCRIPTNAME="blackthornesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
