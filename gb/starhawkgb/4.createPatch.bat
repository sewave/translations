@echo off
set T_FILENAME="TR_Star Hawk (U) [!].gb"
set S_FILENAME="Star Hawk (U) [!].gb"
set SCRIPTNAME="starhawkgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
