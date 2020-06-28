@echo off
set T_FILENAME="Tail 'Gator (USA, Europe).gb"
set SCRIPTNAME="tailgatorgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
