@echo off
set T_FILENAME="TR_Go! Go! Tank (U) [!].gb"
set S_FILENAME="Go! Go! Tank (U) [!].gb"
set SCRIPTNAME="gogotankgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
