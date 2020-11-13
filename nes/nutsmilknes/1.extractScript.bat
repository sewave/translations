@echo off
set T_FILENAME="Nuts & Milk (Japan).nes"
set SCRIPTNAME="nutsmilknes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
