@echo off
set T_FILENAME="TR_Binary Land (1984)(Kuma Computers).rom"
set S_FILENAME="Binary Land (1984)(Kuma Computers).rom"
set SCRIPTNAME="binarylandrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
