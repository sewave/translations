@echo off
set T_FILENAME="TR_Home Alone 2 - Lost in New York (U) [!].bin"
set S_FILENAME="Home Alone 2 - Lost in New York (U) [!].bin"
set SCRIPTNAME="homealone2lostinnewyorksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
