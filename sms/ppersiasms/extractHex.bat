@echo off 
set T_FILENAME="TR_Prince of Persia (E).sms"
set SCRIPTNAME="ppersiasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F138:60,2F318:A0
pause 
