@echo off
set T_FILENAME="Faceball 2000 (Japan).gg"
set SCRIPTNAME="faceball2000gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
