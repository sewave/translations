@echo off
set T_FILENAME="Soukoban (Japan).gg"
set SCRIPTNAME="soukobangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
