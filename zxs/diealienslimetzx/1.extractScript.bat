@echo off
set T_FILENAME="Die Alien Slime.tzx"
set SCRIPTNAME="diealienslimetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
