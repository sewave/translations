@echo off
set T_FILENAME="Onslaught (U) [c][!].bin"
set SCRIPTNAME="onslaughtsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
