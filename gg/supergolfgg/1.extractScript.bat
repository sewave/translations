@echo off
set T_FILENAME="Super Golf (J).gg"
set SCRIPTNAME="supergolfgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
