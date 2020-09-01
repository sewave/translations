@echo off
set T_FILENAME="Zipang (Japan).pce"
set SCRIPTNAME="zipangpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
