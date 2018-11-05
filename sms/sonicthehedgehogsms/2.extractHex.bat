@echo off
set T_FILENAME="TR_Sonic The Hedgehog (UE) [!].sms"
set SCRIPTNAME="sonicthehedgehogsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
