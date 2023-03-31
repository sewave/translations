@echo off
set T_FILENAME="TR_Tom & Jerry (USA, Europe).gbc"
set SCRIPTNAME="tomjerrygbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
