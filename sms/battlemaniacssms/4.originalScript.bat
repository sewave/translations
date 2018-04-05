@echo off
set T_FILENAME="Battlemaniacs (B) [!].sms"
set SCRIPTNAME="battlemaniacssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
