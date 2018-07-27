@echo off
set T_FILENAME="TR_Mercs (E) [!].sms"
set SCRIPTNAME="mercssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
