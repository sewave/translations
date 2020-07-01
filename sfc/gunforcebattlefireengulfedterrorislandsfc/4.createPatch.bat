@echo off
set T_FILENAME="TR_Gunforce - Battle Fire Engulfed Terror Island (U).smc"
set S_FILENAME="Gunforce - Battle Fire Engulfed Terror Island (U).smc"
set SCRIPTNAME="gunforcebattlefireengulfedterrorislandsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
