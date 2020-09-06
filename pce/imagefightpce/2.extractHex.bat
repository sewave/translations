@echo off
set T_FILENAME="TR_Image Fight (Japan).pce"
set SCRIPTNAME="imagefightpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5A500:600
pause
