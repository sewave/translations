@echo off
set T_FILENAME="TR_Dinolympics (USA, Europe).lnx"
set SCRIPTNAME="dinolympicslnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
