@echo off
set T_FILENAME="TR_Deep Duck Trouble (E) [!].sms"
set SCRIPTNAME="ddtroublesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
