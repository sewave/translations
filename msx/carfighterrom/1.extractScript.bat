@echo off
set T_FILENAME="Car Fighter (1985) (Casio) (J).rom"
set SCRIPTNAME="carfighterrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
