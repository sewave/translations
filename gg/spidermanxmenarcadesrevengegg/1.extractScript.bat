@echo off
set T_FILENAME="Spider-Man - X-Men - Arcade's Revenge (USA).gg"
set SCRIPTNAME="spidermanxmenarcadesrevengegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
