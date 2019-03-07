@echo off
set T_FILENAME="Chack 'n Pop (J).nes"
set SCRIPTNAME="chacknpopnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
