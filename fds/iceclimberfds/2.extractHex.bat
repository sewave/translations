@echo off
set T_FILENAME="TR_Ice Climber (Japan) (Disk Writer).fds"
set SCRIPTNAME="iceclimberfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 127C:10,12DC:10,132C:60,16DC:20,1A0C:10,124C:10
pause
