@echo off 
set T_FILENAME="TR_Robocop 3 (E) [!].sms"
set SCRIPTNAME="robocop3sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
