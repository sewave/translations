@echo off
set T_FILENAME="TR_Double Dribble (USA) (Rev 1).nes"
set S_FILENAME="Double Dribble (USA) (Rev 1).nes"
set SCRIPTNAME="doubledribblenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
