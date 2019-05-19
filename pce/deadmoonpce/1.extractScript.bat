@echo off
set T_FILENAME="Dead Moon (U).pce"
set SCRIPTNAME="deadmoonpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
