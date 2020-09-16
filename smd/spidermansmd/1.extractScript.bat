@echo off
set T_FILENAME="Spider-Man (USA, Europe) (Acclaim).md"
set SCRIPTNAME="spidermansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
