@echo off
set T_FILENAME="TR_Friday the 13th (USA).nes"
set SCRIPTNAME="fridaythe13thnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D270:10,F270:10
pause
