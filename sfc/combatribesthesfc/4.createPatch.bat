@echo off
set T_FILENAME="TR_Combatribes, The (U).smc"
set S_FILENAME="Combatribes, The (U).smc"
set SCRIPTNAME="combatribesthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
