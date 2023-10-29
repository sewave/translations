@echo off
set T_FILENAME="TR_Soukoban (Japan).gg"
set S_FILENAME="Soukoban (Japan).gg"
set SCRIPTNAME="soukobangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
