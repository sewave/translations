@echo off
set T_FILENAME="TR_Malibu Beach Volleyball (USA).gb"
set S_FILENAME="Malibu Beach Volleyball (USA).gb"
set SCRIPTNAME="malibubeachvolleyballgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
