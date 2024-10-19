@echo off
set T_FILENAME="Theme Park (Europe) (En,Fr,De).sfc"
set SCRIPTNAME="themeparksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
