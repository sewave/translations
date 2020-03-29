@echo off
set T_FILENAME="Block Out (W) (REV01) [!].bin"
set SCRIPTNAME="blockoutsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
