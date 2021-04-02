@echo off
set T_FILENAME="orphea.nes"
set SCRIPTNAME="orpheanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
