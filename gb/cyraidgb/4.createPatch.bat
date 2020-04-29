@echo off
set T_FILENAME="TR_Cyraid (U) [!].gb"
set S_FILENAME="Cyraid (U) [!].gb"
set SCRIPTNAME="cyraidgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
