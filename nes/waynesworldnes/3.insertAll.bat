@echo off
set T_FILENAME="TR_Wayne's World (USA).nes"
set S_FILENAME="Wayne's World (USA).nes"
set SCRIPTNAME="waynesworldnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
