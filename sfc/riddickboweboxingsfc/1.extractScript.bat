@echo off
set T_FILENAME="Riddick Bowe Boxing (USA).sfc"
set SCRIPTNAME="riddickboweboxingsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
