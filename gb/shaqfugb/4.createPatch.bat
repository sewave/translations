@echo off
set T_FILENAME="TR_Shaq Fu (U) [S][!].gb"
set S_FILENAME="Shaq Fu (U) [S][!].gb"
set SCRIPTNAME="shaqfugb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
