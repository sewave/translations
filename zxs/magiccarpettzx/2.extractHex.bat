@echo off
set T_FILENAME="TR_Magic Carpet.tzx"
set SCRIPTNAME="magiccarpettzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
