@echo off
set T_FILENAME="TR_10-Yard Fight (USA, Europe).nes"
set SCRIPTNAME="10yardfightnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8260:70,9980:120
pause
