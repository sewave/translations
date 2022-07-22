@echo off
set T_FILENAME="Animaniacs (USA).md"
set SCRIPTNAME="animaniacssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
