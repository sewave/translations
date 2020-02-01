@echo off
set T_FILENAME="TR_Super Boy 4 (Korea) (Unl).sms"
set SCRIPTNAME="superboy4sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29000:100,29400:100,30280:40,32280:40,34280:40,36280:40,30400:40,32400:40,34400:40,36400:40,2FF00:C0
pause
