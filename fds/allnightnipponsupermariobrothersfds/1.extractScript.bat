@echo off
set T_FILENAME="All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set SCRIPTNAME="allnightnipponsupermariobrothersfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
