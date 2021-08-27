@echo off
set T_FILENAME="TR_Mega Man V (USA) (SGB Enhanced).gb"
set SCRIPTNAME="megamanvgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 59B7F:8,59B94:8,59B9B:8,59BF6:8,59C04:8,59C2E:8,59C35:8,59C3C:8
pause
