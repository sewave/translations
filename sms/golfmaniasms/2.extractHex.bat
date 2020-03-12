@echo off
set T_FILENAME="TR_Golf Mania (UE) [!].sms"
set SCRIPTNAME="golfmaniasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
