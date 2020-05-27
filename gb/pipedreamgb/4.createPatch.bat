@echo off
set T_FILENAME="TR_Pipe Dream (U) [!].gb"
set S_FILENAME="Pipe Dream (U) [!].gb"
set SCRIPTNAME="pipedreamgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
