@echo off
set T_FILENAME="TR_Sea Hawk.tzx"
set SCRIPTNAME="seahawktzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
