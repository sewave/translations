@echo off
set T_FILENAME="R-Type Part-2 (Japan).pce"
set SCRIPTNAME="rtypepart2pce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
