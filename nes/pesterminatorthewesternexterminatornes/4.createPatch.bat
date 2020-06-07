@echo off
set T_FILENAME="TR_Pesterminator - The Western Exterminator (Color Dreams) [!].nes"
set S_FILENAME="Pesterminator - The Western Exterminator (Color Dreams) [!].nes"
set SCRIPTNAME="pesterminatorthewesternexterminatornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
