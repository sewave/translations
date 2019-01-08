@echo off
set T_FILENAME="TR_Snow Brothers (U) [!].nes"
set SCRIPTNAME="snowbrothersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38F50-391B0,3F010:70
pause
