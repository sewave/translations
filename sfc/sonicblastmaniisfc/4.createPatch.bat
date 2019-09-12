@echo off
set T_FILENAME="TR_Sonic Blast Man II (U).smc"
set S_FILENAME="Sonic Blast Man II (U).smc"
set SCRIPTNAME="sonicblastmaniisfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
