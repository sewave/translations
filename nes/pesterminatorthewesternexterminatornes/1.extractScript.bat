@echo off
set T_FILENAME="Pesterminator - The Western Exterminator (Color Dreams) [!].nes"
set SCRIPTNAME="pesterminatorthewesternexterminatornes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
