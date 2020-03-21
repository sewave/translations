@echo off
set T_FILENAME="TR_Balance (1984) (Hal) (J).rom"
set S_FILENAME="Balance (1984) (Hal) (J).rom"
set SCRIPTNAME="balancerom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
