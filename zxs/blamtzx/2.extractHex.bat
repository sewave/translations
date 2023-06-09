@echo off
set T_FILENAME="TR_BLAM.tzx"
set SCRIPTNAME="blamtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
