@echo off
set T_FILENAME="Looney Tunes (USA, Europe).gb"
set SCRIPTNAME="looneytunesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
