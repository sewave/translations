@echo off
set T_FILENAME="TR_Predator 2 (UE) [!].bin"
set S_FILENAME="Predator 2 (UE) [!].bin"
set SCRIPTNAME="predator2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
