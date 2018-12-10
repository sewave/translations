@echo off 
set T_FILENAME="James Pond 3 - Operation Starfish (U) [!].gg"
set SCRIPTNAME="jamespond3gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off 
pause 
