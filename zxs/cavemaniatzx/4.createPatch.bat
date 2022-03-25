@echo off
set T_FILENAME="TR_Cavemania.tzx"
set S_FILENAME="Cavemania.tzx"
set SCRIPTNAME="cavemaniatzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
