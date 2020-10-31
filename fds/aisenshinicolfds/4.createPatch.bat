@echo off
set T_FILENAME="TR_Ai Senshi Nicol (Japan).fds"
set S_FILENAME="Ai Senshi Nicol (Japan).fds"
set SCRIPTNAME="aisenshinicolfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
