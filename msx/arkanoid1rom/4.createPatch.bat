@echo off
set T_FILENAME="TR_Arkanoid 1 (1986) (Taito) (J).rom"
set S_FILENAME="Arkanoid 1 (1986) (Taito) (J).rom"
set SCRIPTNAME="arkanoid1rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
