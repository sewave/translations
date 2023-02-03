@echo off
set T_FILENAME="Ultimate Combat Mission.tzx"
set SCRIPTNAME="ultimatecombatmissiontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
