@echo off
set T_FILENAME="TR_Boarder Zone (USA).gbc"
set SCRIPTNAME="boarderzonegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7ECB4:20,1B09B4:30,1A63BD:60,1A6CE9:60
pause
