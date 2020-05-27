@echo off
set T_FILENAME="TR_Robocop 2 (U).gb"
set SCRIPTNAME="robocop2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10E00:30,10EE0:40,10F80:10
pause
