@echo off
set T_FILENAME="TR_Incredible Crash Dummies, The (USA, Europe).gb"
set SCRIPTNAME="incrediblecrashdummiesthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
