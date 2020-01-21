@echo off
set T_FILENAME="TR_Bugs Bunny - Crazy Castle II (U) [!].gb"
set S_FILENAME="Bugs Bunny - Crazy Castle II (U) [!].gb"
set SCRIPTNAME="bugsbunnycrazycastleiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
