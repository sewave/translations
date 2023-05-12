@echo off
set T_FILENAME="Cobra Force.tzx"
set SCRIPTNAME="cobraforcetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
