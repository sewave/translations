@echo off
set T_FILENAME="TR_Golf (World).gb"
set SCRIPTNAME="golfgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13208:20
pause
