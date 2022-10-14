@echo off
set T_FILENAME="Flash Gordon.tzx"
set SCRIPTNAME="flashgordontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
