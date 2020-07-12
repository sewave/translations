@echo off
set T_FILENAME="Crazy Climber (Japan).nes"
set SCRIPTNAME="crazyclimbernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
