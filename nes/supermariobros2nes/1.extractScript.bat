@echo off
set T_FILENAME="Super Mario Bros. 2 (J) [hM04].nes"
set SCRIPTNAME="supermariobros2nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
