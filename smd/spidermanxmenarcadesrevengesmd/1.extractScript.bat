@echo off
set T_FILENAME="Spider-Man X-Men - Arcade's Revenge (USA, Europe).md"
set SCRIPTNAME="spidermanxmenarcadesrevengesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
