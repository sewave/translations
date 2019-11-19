@echo off
set T_FILENAME="TR_Pac-Mania (1989) (Namcot) (J).rom"
set S_FILENAME="Pac-Mania (1989) (Namcot) (J).rom"
set SCRIPTNAME="pacmaniarom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
