@echo off
set T_FILENAME="Tetris (U) [!].nes"
set SCRIPTNAME="tetrisnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
