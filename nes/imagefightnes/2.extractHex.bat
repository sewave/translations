@echo off
set T_FILENAME="TR_Image Fight (USA).nes"
set SCRIPTNAME="imagefightnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36B80:30,36E50:50,36F10:50,36FC0:10,36FE0:10,36AC0:10,36FC0:10,37790:50,37910:200
pause
