@echo off
set T_FILENAME="TR_Hypa Raid.tzx"
set SCRIPTNAME="hyparaidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
