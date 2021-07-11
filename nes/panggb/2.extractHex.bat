@echo off
set T_FILENAME="TR_Pang (Europe).gb"
set SCRIPTNAME="panggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C5D:60
pause
