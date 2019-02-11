@echo off
set T_FILENAME="Turrican (U).pce"
set SCRIPTNAME="turricanpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
