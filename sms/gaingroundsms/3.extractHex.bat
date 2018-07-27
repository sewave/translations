@echo off
set T_FILENAME="TR_Gain Ground (UE) [!].sms"
set SCRIPTNAME="gaingroundsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C160:200,C580-D180,2C000:200,32AE0:20
pause
