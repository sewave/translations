@echo off
set T_FILENAME="TR_Battle Royale (U).pce"
set SCRIPTNAME="battleroyalepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
