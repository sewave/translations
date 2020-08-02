@echo off
set T_FILENAME="TR_Generations Lost (UE) [!].bin"
set S_FILENAME="Generations Lost (UE) [!].bin"
set SCRIPTNAME="generationslostsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
