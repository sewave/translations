@echo off
set T_FILENAME="Taz-Mania (World).md"
set SCRIPTNAME="tazmaniasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
