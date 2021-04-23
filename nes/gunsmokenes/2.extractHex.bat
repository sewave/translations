@echo off
set T_FILENAME="TR_Gun.Smoke (USA).nes"
set SCRIPTNAME="gunsmokenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1090:80,9010:A0,9110:A0,9210:A0,34E0:10
pause
