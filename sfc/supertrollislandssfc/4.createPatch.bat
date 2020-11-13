@echo off
set T_FILENAME="TR_Super Troll Islands (USA).sfc"
set S_FILENAME="Super Troll Islands (USA).sfc"
set SCRIPTNAME="supertrollislandssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
