@echo off
set T_FILENAME="TR_Dr. Mario (W) (V1.1).gb"
set SCRIPTNAME="drmariogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4EDA:20,4FBA:10
pause
