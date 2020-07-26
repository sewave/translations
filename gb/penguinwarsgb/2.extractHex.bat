@echo off
set T_FILENAME="TR_Penguin Wars (USA).gb"
set SCRIPTNAME="penguinwarsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CC44:A0
pause
