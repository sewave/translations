@echo off
set T_FILENAME="Buster Fight (J).gg"
set SCRIPTNAME="busterfightgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
