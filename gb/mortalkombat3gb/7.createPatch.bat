@echo off
set T_FILENAME="TR_Mortal Kombat 3 (U) [!].gb"
set S_FILENAME="Mortal Kombat 3 (U) [!].gb"
set SCRIPTNAME="mortalkombat3gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
