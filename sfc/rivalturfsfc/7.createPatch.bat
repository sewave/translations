@echo off
set T_FILENAME="TR_Rival Turf (U).smc"
set S_FILENAME="Rival Turf (U).smc"
set SCRIPTNAME="rivalturfsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
