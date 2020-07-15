@echo off
set T_FILENAME="TR_Faceball 2000 (USA).gb"
set SCRIPTNAME="faceball2000gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9DB4:80,97F4:30,99E4:30
pause
