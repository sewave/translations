@echo off
set T_FILENAME="Ghost Manor (USA).pce"
set SCRIPTNAME="ghostmanorpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
