@echo off
set T_FILENAME="Pinball (JU) [!].nes"
set SCRIPTNAME="pinballnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
