@echo off
set T_FILENAME="TR_Pilotwings (USA).sfc"
set S_FILENAME="Pilotwings (USA).sfc"
set SCRIPTNAME="pilotwingssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
