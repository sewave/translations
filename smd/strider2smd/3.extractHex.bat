@echo off
set T_FILENAME="TR_Journey From Darkness - Strider Returns (U) [c][!].bin"
set SCRIPTNAME="strider2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4AAD0-4AD4F
pause
