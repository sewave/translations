@echo off
set T_FILENAME="Flash, The (U) [!].gb"
set SCRIPTNAME="flashthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
