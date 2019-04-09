@echo off
set T_FILENAME="Space Invaders 91 (U) [c][!].bin"
set SCRIPTNAME="spaceinvaders91smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
