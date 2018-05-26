@echo off
set T_FILENAME="Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes"
set SCRIPTNAME="boyandhisblobatroubleonblobolonianes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
