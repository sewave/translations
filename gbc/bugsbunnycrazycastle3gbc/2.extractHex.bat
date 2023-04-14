@echo off
set T_FILENAME="TR_Bugs Bunny - Crazy Castle 3 (USA, Europe).gbc"
set SCRIPTNAME="bugsbunnycrazycastle3gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
