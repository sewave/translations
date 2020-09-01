@echo off
set T_FILENAME="TR_Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set S_FILENAME="Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set SCRIPTNAME="micromachines2turbotournamentsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
