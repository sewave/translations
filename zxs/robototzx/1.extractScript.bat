@echo off
set T_FILENAME="Roboto.tzx"
set SCRIPTNAME="robototzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Rooms.tbl %T_FILENAME% %SCRIPTNAME%Rooms.ext %SCRIPTNAME%Rooms.off
pause
