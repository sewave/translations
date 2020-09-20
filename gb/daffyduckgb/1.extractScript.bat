@echo off
set T_FILENAME="Daffy Duck (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="daffyduckgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
