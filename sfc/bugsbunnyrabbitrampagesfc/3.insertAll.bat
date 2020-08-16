@echo off
set T_FILENAME="TR_Bugs Bunny - Rabbit Rampage (USA).sfc"
set S_FILENAME="Bugs Bunny - Rabbit Rampage (USA).sfc"
set SCRIPTNAME="bugsbunnyrabbitrampagesfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
