@echo off
set T_FILENAME="TR_Master of Weapon (J) [!].bin"
set S_FILENAME="Master of Weapon (J) [!].bin"
set SCRIPTNAME="masterofweaponsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
