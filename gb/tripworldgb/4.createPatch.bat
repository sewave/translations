@echo off
set T_FILENAME="TR_Trip World (E) [!].gb"
set S_FILENAME="Trip World (E) [!].gb"
set SCRIPTNAME="tripworldgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
