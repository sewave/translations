@echo off
set T_FILENAME="TR_Jang Pung 3 (K) (Unl).sms"
set SCRIPTNAME="jangpung3sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 158B5
pause
