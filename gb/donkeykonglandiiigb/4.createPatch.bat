@echo off
set T_FILENAME="TR_Donkey Kong Land III (U) (V1.1) [S][!].gb"
set S_FILENAME="Donkey Kong Land III (U) (V1.1) [S][!].gb"
set SCRIPTNAME="donkeykonglandiiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
