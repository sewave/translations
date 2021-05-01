@echo off
set T_FILENAME="Arkanoid (Erbe).tzx"
set SCRIPTNAME="arkanoidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
