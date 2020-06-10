@echo off
set T_FILENAME="TR_Loopz (U).gb"
set SCRIPTNAME="loopzgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D3:40
pause
