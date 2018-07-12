@echo off
set T_FILENAME="Pooyan (J).nes"
set SCRIPTNAME="pooyannes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
