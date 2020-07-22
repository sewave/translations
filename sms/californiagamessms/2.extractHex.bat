@echo off
set T_FILENAME="TR_California Games (UE) [!].sms"
set SCRIPTNAME="californiagamessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
