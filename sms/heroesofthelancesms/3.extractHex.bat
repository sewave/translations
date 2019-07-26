@echo off
set T_FILENAME="TR_Heroes of the Lance (U) [!].sms"
set SCRIPTNAME="heroesofthelancesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7CA00-7CC00,7C2C0-7C320,7C760-7C7C0
pause
