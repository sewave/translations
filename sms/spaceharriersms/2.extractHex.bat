@echo off
set T_FILENAME="TR_Space Harrier (Japan, USA).sms"
set SCRIPTNAME="spaceharriersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
