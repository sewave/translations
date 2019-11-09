@echo off
set T_FILENAME="Moto Roader (U).pce"
set SCRIPTNAME="motoroaderpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
