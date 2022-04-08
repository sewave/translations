@echo off
set T_FILENAME="Battle Field.tzx"
set SCRIPTNAME="battlefieldtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
