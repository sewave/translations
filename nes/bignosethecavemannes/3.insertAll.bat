@echo off
set T_FILENAME="TR_Big Nose the Caveman (USA) (Unl).nes"
set S_FILENAME="Big Nose the Caveman (USA) (Unl).nes"
set SCRIPTNAME="bignosethecavemannes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
