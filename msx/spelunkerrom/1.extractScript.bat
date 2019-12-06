@echo off
set T_FILENAME="Spelunker (1986) (Irem) (J).rom"
set SCRIPTNAME="spelunkerrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
