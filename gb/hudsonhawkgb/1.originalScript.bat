@echo off
set T_FILENAME="Hudson Hawk (U) [!].gb"
set SCRIPTNAME="hudsonhawkgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
