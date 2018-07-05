@echo off
set T_FILENAME="TR_Super Mario Bros. (W) [!].nes"
set SCRIPTNAME="supermariobrosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9100-9300
pause
