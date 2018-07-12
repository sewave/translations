@echo off
set T_FILENAME="TR_Streets of Rage 2 (E) [!].sms"
set SCRIPTNAME="sor2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
