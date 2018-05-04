@echo off
set T_FILENAME="Circus Charlie (J) [!].nes"
set SCRIPTNAME="circuscharlienes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
