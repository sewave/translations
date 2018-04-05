@echo off 
set T_FILENAME="Vigilante (U).pce"
set SCRIPTNAME="vigilantepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
