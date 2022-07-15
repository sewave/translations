@echo off
set T_FILENAME="Terminator 2 - Judgment Day (USA).nes"
set SCRIPTNAME="terminator2judgmentdaynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
