@echo off
set T_FILENAME="Thundercade (USA).nes"
set SCRIPTNAME="thundercadenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
