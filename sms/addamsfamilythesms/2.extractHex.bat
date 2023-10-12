@echo off
set T_FILENAME="TR_Addams Family, The (Europe).sms"
set SCRIPTNAME="addamsfamilythesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
