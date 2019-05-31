@echo off
set T_FILENAME="Punch-Out!! (U) [!].nes"
set SCRIPTNAME="punchoutnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
