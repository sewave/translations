@echo off
set T_FILENAME="Blackthorne (USA).gba"
set SCRIPTNAME="blackthornegba"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
