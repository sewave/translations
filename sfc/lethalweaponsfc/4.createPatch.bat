@echo off
set T_FILENAME="TR_Lethal Weapon (U) [!].smc"
set S_FILENAME="Lethal Weapon (U) [!].smc"
set SCRIPTNAME="lethalweaponsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
