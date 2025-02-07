@echo off
set T_FILENAME="RoboCop 3 (World).gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
