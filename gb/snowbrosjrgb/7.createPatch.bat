@echo off
set T_FILENAME="TR_Snow Bros. Jr. (U) [!].gb"
set S_FILENAME="Snow Bros. Jr. (U) [!].gb"
set SCRIPTNAME="snowbrosjrgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
