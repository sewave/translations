@echo off
set T_FILENAME="Arkista's Ring (USA).nes"
set SCRIPTNAME="arkistasringnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
