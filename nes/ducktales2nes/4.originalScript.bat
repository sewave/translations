@echo off
set T_FILENAME="Duck Tales 2 (U) [!].nes"
set SCRIPTNAME="ducktales2nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
