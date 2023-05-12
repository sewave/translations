@echo off
set T_FILENAME="TR_Cobra Force.tzx"
set S_FILENAME="Cobra Force.tzx"
set SCRIPTNAME="cobraforcetzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
