@echo off
set T_FILENAME="R-Type Part-1 (Japan).pce"
set SCRIPTNAME="rtypepart1pce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
