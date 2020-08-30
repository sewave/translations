@echo off
set T_FILENAME="Aaahh!!! Real Monsters (USA).md"
set SCRIPTNAME="aaahhrealmonsterssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
