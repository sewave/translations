@echo off
set T_FILENAME="Heavy Shreddin' (USA).nes"
set SCRIPTNAME="heavyshreddinnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
