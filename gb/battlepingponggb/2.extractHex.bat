@echo off
set T_FILENAME="TR_Battle Pingpong (J).gb"
set SCRIPTNAME="battlepingponggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
