@echo off
set T_FILENAME="TR_Soccer (E) (M3) [S][!].gb"
set S_FILENAME="Soccer (E) (M3) [S][!].gb"
set SCRIPTNAME="soccergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
