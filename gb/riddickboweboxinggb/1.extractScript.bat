@echo off
set T_FILENAME="Riddick Bowe Boxing (USA).gb"
set SCRIPTNAME="riddickboweboxinggb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
