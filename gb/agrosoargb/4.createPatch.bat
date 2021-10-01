@echo off
set T_FILENAME="TR_Agro Soar (Australia).gb"
set S_FILENAME="Agro Soar (Australia).gb"
set SCRIPTNAME="agrosoargb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
