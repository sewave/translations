@echo off
set T_FILENAME="TR_Sneaky Snakes (UE) [!].gb"
set S_FILENAME="Sneaky Snakes (UE) [!].gb"
set SCRIPTNAME="sneakysnakesgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
