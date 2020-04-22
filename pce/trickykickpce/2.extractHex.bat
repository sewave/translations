@echo off
set T_FILENAME="TR_Tricky Kick (U).pce"
set SCRIPTNAME="trickykickpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E9A0:120
pause
