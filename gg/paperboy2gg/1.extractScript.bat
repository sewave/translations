@echo off
set T_FILENAME="Paperboy 2 (U) [!].gg"
set SCRIPTNAME="paperboy2gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
