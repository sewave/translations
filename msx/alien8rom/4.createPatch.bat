@echo off
set T_FILENAME="TR_Alien 8 (Japan).rom"
set S_FILENAME="Alien 8 (Japan).rom"
set SCRIPTNAME="alien8rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
