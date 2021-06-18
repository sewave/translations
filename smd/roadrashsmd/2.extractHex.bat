@echo off
set T_FILENAME="TR_Road Rash (USA, Europe).md"
set SCRIPTNAME="roadrashsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
