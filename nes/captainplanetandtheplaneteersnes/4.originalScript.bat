@echo off
set T_FILENAME="Captain Planet and The Planeteers (U) [!].nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
