@echo off
set T_FILENAME="TR_Into The Eagle's Nest.tzx"
set SCRIPTNAME="intotheeaglesnesttzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FBA:20
pause
