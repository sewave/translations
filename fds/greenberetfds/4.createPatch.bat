@echo off
set T_FILENAME="TR_Green Beret (Japan).fds"
set S_FILENAME="Green Beret (Japan).fds"
set SCRIPTNAME="greenberetfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
