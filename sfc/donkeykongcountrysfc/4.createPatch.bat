@echo off
set T_FILENAME="TR_Donkey Kong Country (U) (V1.2) [!].smc"
set S_FILENAME="Donkey Kong Country (U) (V1.2) [!].smc"
set SCRIPTNAME="donkeykongcountrysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
