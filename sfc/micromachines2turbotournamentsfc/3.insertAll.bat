@echo off
set T_FILENAME="TR_Micro Machines 2 - Turbo Tournament (Europe).sfc"
set S_FILENAME="Micro Machines 2 - Turbo Tournament (Europe).sfc"
set SCRIPTNAME="micromachines2turbotournamentsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
