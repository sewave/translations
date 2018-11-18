@echo off
set T_FILENAME="TR_Pac-Mania (E) [!].sms"
set SCRIPTNAME="pacmaniasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
