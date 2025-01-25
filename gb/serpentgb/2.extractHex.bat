@echo off
set T_FILENAME="TR_Serpent (USA).gb"
set SCRIPTNAME="serpentgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 62D0:100,78B0:300,43C7:10
pause
