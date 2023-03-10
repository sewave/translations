@echo off
set T_FILENAME="Bubsy II (USA, Europe).md"
set SCRIPTNAME="bubsyiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
