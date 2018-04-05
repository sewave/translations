@echo off
set T_FILENAME="Lion King, The (E) [!].sms"
set SCRIPTNAME="lionkingsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
