@echo off
set T_FILENAME="TR_Prince of Persia (USA).sfc"
set S_FILENAME="Prince of Persia (USA).sfc"
set SCRIPTNAME="princeofpersiasfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
