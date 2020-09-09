@echo off
set T_FILENAME="Magic Darts (USA).nes"
set SCRIPTNAME="magicdartsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
