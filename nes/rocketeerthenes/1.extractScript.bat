@echo off
set T_FILENAME="Rocketeer, The (USA).nes"
set SCRIPTNAME="rocketeerthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
