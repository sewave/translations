@echo off
set T_FILENAME="TR_Agent - X.tzx"
set SCRIPTNAME="agentxtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5139:20,52E1:30,53E1:20
pause
