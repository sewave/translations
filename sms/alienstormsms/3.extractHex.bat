@echo off
set T_FILENAME="TR_Alien Storm (E) [!].sms"
set SCRIPTNAME="alienstormsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1364-1564,E1B0:20,E390:20,23CBB:20,7E5E-7F9E,E410:20
pause
