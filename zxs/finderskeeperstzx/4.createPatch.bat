@echo off
set T_FILENAME="TR_Finders Keepers.tzx"
set S_FILENAME="Finders Keepers.tzx"
set SCRIPTNAME="finderskeeperstzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
