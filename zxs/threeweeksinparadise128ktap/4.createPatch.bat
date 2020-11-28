@echo off
set T_FILENAME="TR_Three Weeks In Paradise - 128k.tap"
set S_FILENAME="Three Weeks In Paradise - 128k.tap"
set SCRIPTNAME="threeweeksinparadise128ktap"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
