@echo off
set T_FILENAME="Nazo no Murasamejou (Japan) [T+ENG].fds"
set SCRIPTNAME="nazonomurasamejoufds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
