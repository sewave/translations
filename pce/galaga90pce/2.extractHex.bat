@echo off
set T_FILENAME="TR_Galaga '90 (U).pce"
set SCRIPTNAME="galaga90pce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2AF80:400
pause
