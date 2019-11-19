@echo off
set T_FILENAME="TR_Galaxian (1984) (Namcot) (J) [a1].rom"
set S_FILENAME="Galaxian (1984) (Namcot) (J) [a1].rom"
set SCRIPTNAME="galaxianrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
