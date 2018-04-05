@echo off
set T_FILENAME="TR_Alex Kidd in Shinobi World (UE) [!].sms"
set SCRIPTNAME="alexkiddshinobi"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
