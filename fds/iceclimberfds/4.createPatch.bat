@echo off
set T_FILENAME="TR_Ice Climber (Japan) (Disk Writer).fds"
set S_FILENAME="Ice Climber (Japan) (Disk Writer).fds"
set SCRIPTNAME="iceclimberfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
