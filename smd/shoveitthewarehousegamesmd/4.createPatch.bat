@echo off
set T_FILENAME="TR_Shove It! ...The Warehouse Game (USA).md"
set S_FILENAME="Shove It! ...The Warehouse Game (USA).md"
set SCRIPTNAME="shoveitthewarehousegamesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
