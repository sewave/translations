@echo off
set T_FILENAME="TR_After Burst (Japan).gb"
set S_FILENAME="After Burst (Japan).gb"
set SCRIPTNAME="afterburstgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
