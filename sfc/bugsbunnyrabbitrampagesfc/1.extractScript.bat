@echo off
set T_FILENAME="Bugs Bunny - Rabbit Rampage (USA).sfc"
set SCRIPTNAME="bugsbunnyrabbitrampagesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
