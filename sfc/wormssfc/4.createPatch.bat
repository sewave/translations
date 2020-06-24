@echo off
set T_FILENAME="TR_Worms (E).smc"
set S_FILENAME="Worms (E).smc"
set SCRIPTNAME="wormssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
