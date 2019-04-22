@echo off
set T_FILENAME="Bugs Bunny Crazy Castle, The (U) [!].nes"
set SCRIPTNAME="bugsbunnycrazycastlethenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
