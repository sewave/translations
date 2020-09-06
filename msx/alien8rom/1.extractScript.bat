@echo off
set T_FILENAME="Alien 8 (Japan).rom"
set SCRIPTNAME="alien8rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
