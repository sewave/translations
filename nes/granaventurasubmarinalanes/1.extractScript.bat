@echo off
set T_FILENAME="Gran Aventura Submarina, La (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="granaventurasubmarinalanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
