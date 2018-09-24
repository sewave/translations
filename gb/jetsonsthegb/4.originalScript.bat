@echo off
set T_FILENAME="Jetsons, The (U).gb"
set SCRIPTNAME="jetsonsthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
