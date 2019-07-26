@echo off
set T_FILENAME="TR_Shanghai (UE) [!].sms"
set SCRIPTNAME="shanghaisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
