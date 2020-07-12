@echo off
set T_FILENAME="TR_Crazy Climber (Japan).nes"
set S_FILENAME="Crazy Climber (Japan).nes"
set SCRIPTNAME="crazyclimbernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
