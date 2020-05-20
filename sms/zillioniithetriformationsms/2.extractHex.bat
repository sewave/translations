@echo off
set T_FILENAME="TR_Zillion II - The Tri Formation (JUE) [!].sms"
set SCRIPTNAME="zillioniithetriformationsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9FE8:2A0
pause
