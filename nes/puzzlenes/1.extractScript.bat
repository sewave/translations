@echo off
set T_FILENAME="Puzzle (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="puzzlenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
