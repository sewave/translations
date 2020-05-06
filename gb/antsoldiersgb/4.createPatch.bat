@echo off
set T_FILENAME="TR_Ant Soldiers (Sachen) [!].gb"
set S_FILENAME="Ant Soldiers (Sachen) [!].gb"
set SCRIPTNAME="antsoldiersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
