@echo off
set T_FILENAME="TR_Vigilante (USA, Europe, Brazil).sms"
set SCRIPTNAME="vigilantesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F7E3:80,FA43:20
pause
