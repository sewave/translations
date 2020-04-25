@echo off
set T_FILENAME="Panther (1986) (Irem) (J).rom"
set SCRIPTNAME="pantherrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
