@echo off
set T_FILENAME="Lion King, The (USA).gb"
set SCRIPTNAME="lionkingthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
