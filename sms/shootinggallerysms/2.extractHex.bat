@echo off
set T_FILENAME="TR_Shooting Gallery (USA, Europe, Brazil).sms"
set SCRIPTNAME="shootinggallerysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
