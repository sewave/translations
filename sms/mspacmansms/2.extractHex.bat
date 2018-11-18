@echo off
set T_FILENAME="TR_Ms. Pac-man (E) [!].sms"
set SCRIPTNAME="mspacmansms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
