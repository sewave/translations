@echo off
set T_FILENAME="TR_RoboCop Vs. The Terminator (U) [!].gb"
set SCRIPTNAME="rbcvstrmgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
