@echo off
set T_FILENAME="Midnight Resistance (U) [!].gen"
set SCRIPTNAME="midnightresistancesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
