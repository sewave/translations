@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gen"
set S_FILENAME="Cool Spot (U) [!].gen"
set SCRIPTNAME="coolspotsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
