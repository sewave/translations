@echo off
set T_FILENAME="Championship Pro-Am (USA).md"
set SCRIPTNAME="championshipproamsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
