@echo off
set T_FILENAME="TR_Laser Ghost (E) [!].sms"
set SCRIPTNAME="laserghostsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
