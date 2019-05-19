@echo off
set T_FILENAME="Tatsujin (Japan).pce"
set SCRIPTNAME="tatsujinpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
