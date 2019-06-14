@echo off
set T_FILENAME="TR_Super Space Invaders (E) [!].sms"
set SCRIPTNAME="superspaceinvaderssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 383A0:60,12A70:200
pause
