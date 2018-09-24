@echo off
set T_FILENAME="TR_New Zealand Story, The (E) [!].sms"
set SCRIPTNAME="newzealandstorythesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
