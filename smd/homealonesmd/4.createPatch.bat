@echo off
set T_FILENAME="TR_Home Alone (USA, Europe).md"
set S_FILENAME="Home Alone (USA, Europe).md"
set SCRIPTNAME="homealonesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
