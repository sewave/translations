@echo off
set T_FILENAME="Cerius.tzx"
set SCRIPTNAME="ceriustzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
