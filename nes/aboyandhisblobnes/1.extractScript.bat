@echo off
set T_FILENAME="David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set SCRIPTNAME="aboyandhisblobnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
