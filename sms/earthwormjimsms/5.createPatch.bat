@echo off
set T_FILENAME="TR_Earthworm Jim (B) [!].sms"
set S_FILENAME="Earthworm Jim (B) [!].sms"
set SCRIPTNAME="earthwormjimsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
