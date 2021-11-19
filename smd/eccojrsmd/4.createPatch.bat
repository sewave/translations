@echo off
set T_FILENAME="TR_Ecco Jr. (USA, Australia).md"
set S_FILENAME="Ecco Jr. (USA, Australia).md"
set SCRIPTNAME="eccojrsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
