@echo off
set T_FILENAME="Joe & Mac 2 - Lost in the Tropics (U).smc"
set SCRIPTNAME="joemac2lostinthetropicssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
