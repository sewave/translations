@echo off
set T_FILENAME="Duck Tales 2 (U) [!].gb"
set SCRIPTNAME="ducktales2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
