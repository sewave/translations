@echo off
set T_FILENAME="Golf (USA).nes"
set SCRIPTNAME="golfnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
