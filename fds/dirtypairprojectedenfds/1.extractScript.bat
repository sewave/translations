@echo off
set T_FILENAME="Dirty Pair - Project Eden (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="dirtypairprojectedenfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
