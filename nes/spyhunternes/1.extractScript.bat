@echo off
set T_FILENAME="Spy Hunter (USA).nes"
set SCRIPTNAME="spyhunternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
