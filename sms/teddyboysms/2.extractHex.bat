@echo off
set T_FILENAME="TR_Teddy Boy (UE) [!].sms"
set SCRIPTNAME="teddyboysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
