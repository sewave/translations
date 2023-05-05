@echo off
set T_FILENAME="TR_Trantor (Erbe).tzx"
set SCRIPTNAME="trantortzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
