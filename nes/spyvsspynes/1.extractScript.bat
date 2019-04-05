@echo off
set T_FILENAME="Spy Vs Spy (U) [!].nes"
set SCRIPTNAME="spyvsspynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
