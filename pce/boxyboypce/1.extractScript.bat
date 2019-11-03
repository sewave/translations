@echo off
set T_FILENAME="Boxy Boy (U).pce"
set SCRIPTNAME="boxyboypce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
