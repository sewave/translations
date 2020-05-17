@echo off
set T_FILENAME="TR_Darius Twin (U) [!].smc"
set S_FILENAME="Darius Twin (U) [!].smc"
set SCRIPTNAME="dariustwinsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
