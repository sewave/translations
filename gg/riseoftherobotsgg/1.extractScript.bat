@echo off
set T_FILENAME="Rise of the Robots (USA, Europe).gg"
set SCRIPTNAME="riseoftherobotsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
