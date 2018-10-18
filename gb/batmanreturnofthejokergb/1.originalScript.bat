@echo off
set T_FILENAME="Batman - Return of the Joker (U) [!].gb"
set SCRIPTNAME="batmanreturnofthejokergb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
