@echo off
set T_FILENAME="Bomberman (U).pce"
set SCRIPTNAME="bombermanpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
