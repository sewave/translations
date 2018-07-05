@echo off
set T_FILENAME="Super Mario Bros. (W) [!].nes"
set SCRIPTNAME="supermariobrosnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
