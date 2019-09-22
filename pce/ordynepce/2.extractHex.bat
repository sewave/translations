@echo off
set T_FILENAME="TR_Ordyne (U).pce"
set SCRIPTNAME="ordynepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20000:C00
pause
