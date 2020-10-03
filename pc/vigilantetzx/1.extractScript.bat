@echo off
set T_FILENAME="Vigilante (Erbe).tzx"
set SCRIPTNAME="vigilantetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
