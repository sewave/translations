@echo off
set T_FILENAME="TR_RoboCop 3 (World).gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 47C8:20,48E8:20
pause
