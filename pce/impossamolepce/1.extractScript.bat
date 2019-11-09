@echo off
set T_FILENAME="Impossamole (U).pce"
set SCRIPTNAME="impossamolepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
