@echo off
set T_FILENAME="TR_Aaahh!!! Real Monsters (USA).sfc"
set S_FILENAME="Aaahh!!! Real Monsters (USA).sfc"
set SCRIPTNAME="aaahhrealmonsterssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
