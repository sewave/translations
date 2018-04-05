@echo off
set T_FILENAME="Aero Blasters (U).pce"
set SCRIPTNAME="aeroblasterspce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
