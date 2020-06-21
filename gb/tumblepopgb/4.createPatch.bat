@echo off
set T_FILENAME="TR_Tumble Pop (U) [!].gb"
set S_FILENAME="Tumble Pop (U) [!].gb"
set SCRIPTNAME="tumblepopgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
