@echo off
set T_FILENAME="Dough Boy (Japan).nes"
set SCRIPTNAME="doughboynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
