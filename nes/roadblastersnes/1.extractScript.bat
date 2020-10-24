@echo off
set T_FILENAME="RoadBlasters (USA).nes"
set SCRIPTNAME="roadblastersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
