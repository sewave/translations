@echo off
set T_FILENAME="TR_BattleCity (J) [!].gb"
set S_FILENAME="BattleCity (J) [!].gb"
set SCRIPTNAME="battlecitygb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
