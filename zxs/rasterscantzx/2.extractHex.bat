@echo off
set T_FILENAME="TR_Raster Scan.tzx"
set SCRIPTNAME="rasterscantzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 87CA:40
pause
