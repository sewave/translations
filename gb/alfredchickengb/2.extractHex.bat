@echo off
set T_FILENAME="TR_Alfred Chicken (USA).gb"
set SCRIPTNAME="alfredchickengb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
