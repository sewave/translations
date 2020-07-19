@echo off
set T_FILENAME="Fighting Simulator 2 in 1 - Flying Warriors (USA, Europe).gb"
set SCRIPTNAME="fightingsimulator2in1flyingwarriorsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
