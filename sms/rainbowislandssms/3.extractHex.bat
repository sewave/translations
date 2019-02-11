@echo off
set T_FILENAME="TR_Rainbow Islands (E) [!].sms"
set SCRIPTNAME="rainbowislandssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AA20:100,1B120:60
pause
