@echo off
set T_FILENAME="TR_Q Billion (U) [!].gb"
set S_FILENAME="Q Billion (U) [!].gb"
set SCRIPTNAME="qbilliongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
