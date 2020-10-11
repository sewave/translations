@echo off
set T_FILENAME="Circus Lido (Japan).pce"
set SCRIPTNAME="circuslidopce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
