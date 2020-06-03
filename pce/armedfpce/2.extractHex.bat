@echo off
set T_FILENAME="TR_Armed F (Japan).pce"
set SCRIPTNAME="armedfpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20E68:100
pause
