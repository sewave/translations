@echo off
set T_FILENAME="yazzie128.tap"
set SCRIPTNAME="yazzie128tap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
