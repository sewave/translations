@echo off
set T_FILENAME="TR_Laser Ghost (E) [!].sms"
set S_FILENAME="Laser Ghost (E) [!].sms"
set SCRIPTNAME="laserghostsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
