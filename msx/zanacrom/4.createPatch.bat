@echo off
set T_FILENAME="TR_Zanac (1986) (Pony Cannon) (J).rom"
set S_FILENAME="Zanac (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="zanacrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
