@echo off
set T_FILENAME="Corre Benny (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="correbennynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
