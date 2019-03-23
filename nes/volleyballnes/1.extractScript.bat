@echo off
set T_FILENAME="Volleyball (UE) [!].nes"
set SCRIPTNAME="volleyballnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
