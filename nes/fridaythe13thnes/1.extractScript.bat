@echo off
set T_FILENAME="Friday the 13th (USA).nes"
set SCRIPTNAME="fridaythe13thnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
