@echo off
set T_FILENAME="TR_Joe & Mac 2 - Lost in the Tropics (U).smc"
set S_FILENAME="Joe & Mac 2 - Lost in the Tropics (U).smc"
set SCRIPTNAME="joemac2lostinthetropicssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
