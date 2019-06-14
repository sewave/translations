@echo off
set T_FILENAME="TR_Zool (E) [!].sms"
set SCRIPTNAME="zoolsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
