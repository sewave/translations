@echo off
set T_FILENAME="Ghosts 'N Goblins (U) [!].nes"
set SCRIPTNAME="ghoulsgoblinsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
