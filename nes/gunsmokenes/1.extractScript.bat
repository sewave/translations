@echo off
set T_FILENAME="Gun.Smoke (USA).nes"
set SCRIPTNAME="gunsmokenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
