@echo off
set T_FILENAME="TR_Earthworm Jim (B) [!].sms"
set SCRIPTNAME="earthwormjimsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
