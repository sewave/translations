@echo off
set T_FILENAME="TR_Drop Off (U).pce"
set SCRIPTNAME="dropoffpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C420:200
pause
