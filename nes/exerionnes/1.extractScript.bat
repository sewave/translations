@echo off
set T_FILENAME="Exerion (J) [!].nes"
set SCRIPTNAME="exerionnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
