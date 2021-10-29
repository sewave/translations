@echo off
set T_FILENAME="Trolls in Crazyland, The (Europe).nes"
set SCRIPTNAME="trollsincrazylandthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
