@echo off
set T_FILENAME="Houma ga Toki (J).nes"
set SCRIPTNAME="houmagatokines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
