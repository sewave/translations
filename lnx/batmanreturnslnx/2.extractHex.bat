@echo off
set T_FILENAME="TR_Batman Returns (USA, Europe).lnx"
set SCRIPTNAME="batmanreturnslnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
