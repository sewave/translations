@echo off
set T_FILENAME="TR_Donkey Kong Land (U) [S][!].gb"
set S_FILENAME="Donkey Kong Land (U) [S][!].gb"
set SCRIPTNAME="donkeykonglandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
