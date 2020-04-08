@echo off
set T_FILENAME="TR_Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set S_FILENAME="Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set SCRIPTNAME="arcticzonegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
