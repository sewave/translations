@echo off
set T_FILENAME="TR_Tanque (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="tanquenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8990:A0,8D10-9010,8F10:100
pause
