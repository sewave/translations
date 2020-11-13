@echo off
set T_FILENAME="TR_Exolon (Erbe).tzx"
set SCRIPTNAME="exolontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
