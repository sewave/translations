@echo off
set T_FILENAME="TR_Kung Food (USA, Europe).lnx"
set SCRIPTNAME="kungfoodlnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
