@echo off
set T_FILENAME="Looney Tunes (USA).gbc"
set SCRIPTNAME="looneytunesgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
