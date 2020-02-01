@echo off
set T_FILENAME="Rhino Rumble (U) [C][!].gbc"
set SCRIPTNAME="rhinorumblegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
