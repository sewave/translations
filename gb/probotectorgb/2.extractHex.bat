@echo off
set T_FILENAME="TR_Probotector (Europe).gb"
set SCRIPTNAME="probotectorgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
