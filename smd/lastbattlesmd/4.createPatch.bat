@echo off
set T_FILENAME="TR_Last Battle (UE) [!].bin"
set S_FILENAME="Last Battle (UE) [!].bin"
set SCRIPTNAME="lastbattlesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
