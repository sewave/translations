@echo off
set T_FILENAME="TR_Zanac (U) [!].nes"
set SCRIPTNAME="zanacnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 189E6:80,18A6A:80,18AEE:80,18B72:80
pause
