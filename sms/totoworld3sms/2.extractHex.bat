@echo off
set T_FILENAME="TR_Toto World 3 (K) [!].sms"
set SCRIPTNAME="totoworld3sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20800:40,20A40:C0,20BC0:40
pause
