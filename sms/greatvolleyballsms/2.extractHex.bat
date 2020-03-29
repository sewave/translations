@echo off
set T_FILENAME="TR_Great Volleyball (UEB) [!].sms"
set SCRIPTNAME="greatvolleyballsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12A60:20,12C00:40,13200:80,11A40:20,13680:500
pause
