@echo off
set T_FILENAME="TR_Marble Madness (UE) [!].sms"
set SCRIPTNAME="marblemadnesssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
