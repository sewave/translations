@echo off
set T_FILENAME="yazzie48.tap"
set SCRIPTNAME="yazzie48tap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
