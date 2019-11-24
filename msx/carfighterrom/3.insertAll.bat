@echo off
set T_FILENAME="TR_Car Fighter (1985) (Casio) (J).rom"
set S_FILENAME="Car Fighter (1985) (Casio) (J).rom"
set SCRIPTNAME="carfighterrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
