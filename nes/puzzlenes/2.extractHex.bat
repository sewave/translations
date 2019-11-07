@echo off
set T_FILENAME="TR_Puzzle (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="puzzlenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8130:30,9130:30,A130:30,B130:30,C130:30,D130:30,E130:30,F130:30,
pause
