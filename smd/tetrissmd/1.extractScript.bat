@echo off
set T_FILENAME="Tetris (J) [!].bin"
set SCRIPTNAME="tetrissmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
