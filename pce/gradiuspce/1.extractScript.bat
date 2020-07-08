@echo off
set T_FILENAME="Gradius (Japan).pce"
set SCRIPTNAME="gradiuspce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
