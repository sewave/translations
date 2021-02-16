@echo off
set T_FILENAME="Ultracore (Japan) (En).md"
set SCRIPTNAME="ultracoresmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
