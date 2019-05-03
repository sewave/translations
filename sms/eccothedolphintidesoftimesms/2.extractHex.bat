@echo off
set T_FILENAME="TR_Ecco the Dolphin - Tides of Time (B).sms"
set SCRIPTNAME="eccothedolphintidesoftimesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F3F5:10
pause
