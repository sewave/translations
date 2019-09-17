@echo off
set T_FILENAME="TR_Rolo to the Rescue (UE) [!].bin"
set S_FILENAME="Rolo to the Rescue (UE) [!].bin"
set SCRIPTNAME="rolototherescuesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
