@echo off
set T_FILENAME="TR_Ai Senshi Nicol (Japan).fds"
set SCRIPTNAME="aisenshinicolfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
