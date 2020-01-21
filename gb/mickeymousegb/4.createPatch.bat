@echo off
set T_FILENAME="TR_Mickey Mouse (UE) [!].gb"
set S_FILENAME="Mickey Mouse (UE) [!].gb"
set SCRIPTNAME="mickeymousegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
