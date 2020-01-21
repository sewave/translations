@echo off
set T_FILENAME="TR_Front Line (1984) (Taito) (J).rom"
set S_FILENAME="Front Line (1984) (Taito) (J).rom"
set SCRIPTNAME="frontlinerom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
