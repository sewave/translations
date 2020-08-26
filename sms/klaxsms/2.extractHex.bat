@echo off
set T_FILENAME="TR_Klax (E) [!].sms"
set SCRIPTNAME="klaxsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
