@echo off
set T_FILENAME="Pizza Bar.tzx"
set SCRIPTNAME="pizzabartzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
