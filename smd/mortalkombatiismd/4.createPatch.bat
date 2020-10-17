@echo off
set T_FILENAME="TR_Mortal Kombat II (World).md"
set S_FILENAME="Mortal Kombat II (World).md"
set SCRIPTNAME="mortalkombatiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
