@echo off
set T_FILENAME="TR_Prince of Persia (E).bin"
set S_FILENAME="Prince of Persia (E).bin"
set SCRIPTNAME="ppersiaesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
