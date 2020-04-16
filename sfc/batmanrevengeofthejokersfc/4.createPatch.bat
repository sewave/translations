@echo off
set T_FILENAME="TR_Batman - Revenge of the Joker (U).smc"
set S_FILENAME="Batman - Revenge of the Joker (U).smc"
set SCRIPTNAME="batmanrevengeofthejokersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
