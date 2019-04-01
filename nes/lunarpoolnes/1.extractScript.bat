@echo off
set T_FILENAME="Lunar Pool (U) [!].nes"
set SCRIPTNAME="lunarpoolnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
