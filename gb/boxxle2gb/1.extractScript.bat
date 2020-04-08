@echo off
set T_FILENAME="Boxxle 2 (U) [!].gb"
set SCRIPTNAME="boxxle2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
