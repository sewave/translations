@echo off
set T_FILENAME="TR_Top Gear (U) [!].smc"
set S_FILENAME="Top Gear (U) [!].smc"
set SCRIPTNAME="topgearsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
