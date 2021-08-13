@echo off
set T_FILENAME="TR_Road Rash II (USA, Europe).md"
set SCRIPTNAME="roadrashiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
