@echo off
set T_FILENAME="Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set SCRIPTNAME="toystorygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
