@echo off
set T_FILENAME="TR_Ashura (J) [!].sms"
set SCRIPTNAME="ashurasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
