@echo off
set T_FILENAME="Ms. Pac-Man (U) [!].bin"
set SCRIPTNAME="mspacmansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
