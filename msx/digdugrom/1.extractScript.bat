@echo off
set T_FILENAME="Dig Dug (1984) (Namcot) (J).rom"
set SCRIPTNAME="digdugrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
