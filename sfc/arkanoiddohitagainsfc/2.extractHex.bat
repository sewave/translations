@echo off
set T_FILENAME="TR_Arkanoid - Doh It Again (USA).sfc"
set SCRIPTNAME="arkanoiddohitagainsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 603B0:50,605B0:30,60030:10
pause
