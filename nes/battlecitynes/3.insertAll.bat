@echo off
set T_FILENAME="TR_BattleCity (Japan).nes"
set S_FILENAME="BattleCity (Japan).nes"
set SCRIPTNAME="battlecitynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
