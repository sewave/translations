@echo off
set T_FILENAME="TR_C-So! (1985)(Pony Canyon).rom"
set S_FILENAME="C-So! (1985)(Pony Canyon).rom"
set SCRIPTNAME="csorom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
