@echo off
set T_FILENAME="Paperboy 2 (USA).nes"
set SCRIPTNAME="paperboy2nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
