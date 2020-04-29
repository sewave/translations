@echo off
set T_FILENAME="TR_Spot (U) [!].gb"
set S_FILENAME="Spot (U) [!].gb"
set SCRIPTNAME="spotgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
