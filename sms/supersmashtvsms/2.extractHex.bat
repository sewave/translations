@echo off
set T_FILENAME="TR_Super Smash TV (E) [!].sms"
set SCRIPTNAME="supersmashtvsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
