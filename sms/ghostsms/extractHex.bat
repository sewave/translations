@echo off 
set T_FILENAME="Ghostbusters (UE) [!].sms"
set SCRIPTNAME="ghostsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
