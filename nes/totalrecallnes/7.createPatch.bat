@echo off
set T_FILENAME="TR_Total Recall (U) [!].nes"
set S_FILENAME="Total Recall (U) [!].nes"
set SCRIPTNAME="totalrecallnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
