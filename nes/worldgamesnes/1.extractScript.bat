@echo off
set T_FILENAME="World Games (USA).nes"
set SCRIPTNAME="worldgamesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
