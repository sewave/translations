@echo off
set T_FILENAME="Tanzer.bin"
set SCRIPTNAME="tanzersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
