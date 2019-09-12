@echo off
set T_FILENAME="TR_Sonic Blast Man (U) [!].smc"
set S_FILENAME="Sonic Blast Man (U) [!].smc"
set SCRIPTNAME="sonicblastmansfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
