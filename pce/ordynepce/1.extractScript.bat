@echo off
set T_FILENAME="Ordyne (U).pce"
set SCRIPTNAME="ordynepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
