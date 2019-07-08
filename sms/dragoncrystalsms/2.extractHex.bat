@echo off
set T_FILENAME="TR_Dragon Crystal (E) [!].sms"
set SCRIPTNAME="dragoncrystalsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 818A:80
pause
