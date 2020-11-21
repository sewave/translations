@echo off
set T_FILENAME="F1 Race (Japan).nes"
set SCRIPTNAME="f1racenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
