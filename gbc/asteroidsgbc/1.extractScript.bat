@echo off
set T_FILENAME="Asteroids (USA, Europe).gbc"
set SCRIPTNAME="asteroidsgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
