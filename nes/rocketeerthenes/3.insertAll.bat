@echo off
set T_FILENAME="TR_Rocketeer, The (USA).nes"
set S_FILENAME="Rocketeer, The (USA).nes"
set SCRIPTNAME="rocketeerthenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
