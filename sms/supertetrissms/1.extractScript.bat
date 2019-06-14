@echo off
set T_FILENAME="Super Tetris (Korea) (Pirate).sms"
set SCRIPTNAME="supertetrissms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
