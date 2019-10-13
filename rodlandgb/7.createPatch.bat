@echo off
set T_FILENAME="TR_Rodland (U).gb"
set S_FILENAME="Rodland (U).gb"
set SCRIPTNAME="rodlandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
