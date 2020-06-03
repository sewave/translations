@echo off
set T_FILENAME="TR_Maru's Mission (U) [!].gb"
set S_FILENAME="Maru's Mission (U) [!].gb"
set SCRIPTNAME="marusmissiongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
