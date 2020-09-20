@echo off
set T_FILENAME="TR_Alien 3 (UE) [!].gb"
set S_FILENAME="Alien 3 (UE) [!].gb"
set SCRIPTNAME="alien3gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
