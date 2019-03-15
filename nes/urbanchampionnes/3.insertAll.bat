@echo off
set T_FILENAME="TR_Urban Champion (W) [!].nes"
set S_FILENAME="Urban Champion (W) [!].nes"
set SCRIPTNAME="urbanchampionnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
