@echo off
set T_FILENAME="Daffy Duck - The Marvin Missions (USA).sfc"
set SCRIPTNAME="daffyduckthemarvinmissionssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
