@echo off
set T_FILENAME="TR_Crusader (Japan).rom"
set S_FILENAME="Crusader (Japan).rom"
set SCRIPTNAME="crusaderrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
