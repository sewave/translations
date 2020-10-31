@echo off
set T_FILENAME="Spider-Man - X-Men - Arcade's Revenge (USA).sfc"
set SCRIPTNAME="spidermanxmenarcadesrevengesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
