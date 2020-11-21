@echo off
set T_FILENAME="Spider-Man 2 - The Sinister Six (USA, Europe).gbc"
set SCRIPTNAME="spiderman2thesinistersixgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
