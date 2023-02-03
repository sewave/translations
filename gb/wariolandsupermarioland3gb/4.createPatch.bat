@echo off
set T_FILENAME="TR_Wario Land - Super Mario Land 3 (World).gb"
set S_FILENAME="Wario Land - Super Mario Land 3 (World).gb"
set SCRIPTNAME="wariolandsupermarioland3gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
