@echo off
set T_FILENAME="Altered Space (U) [!].gb"
set SCRIPTNAME="alteredspacegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
