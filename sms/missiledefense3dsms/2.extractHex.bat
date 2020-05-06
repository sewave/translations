@echo off
set T_FILENAME="TR_Missile Defense 3-D (UEB) [!].sms"
set SCRIPTNAME="missiledefense3dsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
