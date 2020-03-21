@echo off
set T_FILENAME="TR_Arkanoid 2 (1987) (Taito) (J).rom"
set S_FILENAME="Arkanoid 2 (1987) (Taito) (J).rom"
set SCRIPTNAME="arkanoid2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
