@echo off
set T_FILENAME="wolfling14.nes"
set SCRIPTNAME="wolfling14nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
