@echo off
set T_FILENAME="Arcade Classic No. 3 - Galaga & Galaxian (USA) (SGB Enhanced).gb"
set SCRIPTNAME="galagagalaxiangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
