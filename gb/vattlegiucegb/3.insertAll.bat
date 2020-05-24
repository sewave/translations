@echo off
set T_FILENAME="TR_Vattle Giuce (J) [!].gb"
set S_FILENAME="Vattle Giuce (J) [!].gb"
set SCRIPTNAME="vattlegiucegb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
