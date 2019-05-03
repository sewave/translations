@echo off
set T_FILENAME="TR_Ecco the Dolphin - Tides of Time (B).sms"
set S_FILENAME="Ecco the Dolphin - Tides of Time (B).sms"
set SCRIPTNAME="eccothedolphintidesoftimesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
