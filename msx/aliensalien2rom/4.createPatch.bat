@echo off
set T_FILENAME="TR_Aliens - Alien 2 (Japan).rom"
set S_FILENAME="Aliens - Alien 2 (Japan).rom"
set SCRIPTNAME="aliensalien2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
