@echo off
set T_FILENAME="Galaga '90 (U).pce"
set SCRIPTNAME="galaga90pce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
