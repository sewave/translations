@echo off
set T_FILENAME="Micro Machines 2 - Turbo Tournament (Europe).sfc"
set SCRIPTNAME="micromachines2turbotournamentsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
