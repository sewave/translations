@echo off
set T_FILENAME="TR_Predator 2 (E) [!].sms"
set SCRIPTNAME="predator2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A10A:140
pause
