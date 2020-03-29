@echo off
set T_FILENAME="TR_Amazing Penguin (UE) [!].gb"
set S_FILENAME="Amazing Penguin (UE) [!].gb"
set SCRIPTNAME="amazingpenguingb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
