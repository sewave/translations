@echo off
set T_FILENAME="yazzie.bin"
set SCRIPTNAME="yazziesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
