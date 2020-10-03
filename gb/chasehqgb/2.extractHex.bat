@echo off
set T_FILENAME="TR_Chase H.Q. (USA, Europe).gb"
set SCRIPTNAME="chasehqgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
