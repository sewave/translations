@echo off
set T_FILENAME="TR_Ultimate Combat Mission.tzx"
set SCRIPTNAME="ultimatecombatmissiontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8359:40
pause
