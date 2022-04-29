@echo off
set T_FILENAME="TR_Wanted - Monty Mole.tzx"
set S_FILENAME="Wanted - Monty Mole.tzx"
set SCRIPTNAME="wantedmontymoletzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
