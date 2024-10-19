@echo off
set T_FILENAME="TR_Theme Park (Europe) (En,Fr,De).sfc"
set S_FILENAME="Theme Park (Europe) (En,Fr,De).sfc"
set SCRIPTNAME="themeparksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
