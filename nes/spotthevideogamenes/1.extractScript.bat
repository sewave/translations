@echo off
set T_FILENAME="Spot - The Video Game (USA).nes"
set SCRIPTNAME="spotthevideogamenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
