@echo off
set T_FILENAME="Super Return of the Jedi (U) [!].gg"
set SCRIPTNAME="superreturnofthejedigg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
