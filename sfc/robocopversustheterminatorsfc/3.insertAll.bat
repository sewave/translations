@echo off
set T_FILENAME="TR_Robocop Versus The Terminator (U).smc"
set S_FILENAME="Robocop Versus The Terminator (U).smc"
set SCRIPTNAME="robocopversustheterminatorsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
