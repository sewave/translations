@echo off
set T_FILENAME="TR_Kenseiden (UE) [!].sms"
set SCRIPTNAME="kenseidensms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8218:80
pause
