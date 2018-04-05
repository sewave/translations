@echo off
set T_FILENAME="TR_Swamp Thing (U) [!].nes"
set SCRIPTNAME="swampthingnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20060:A0,201D0:60,22030:30,23030:30,26030:30,3D030:30,3E030:30,3F030:30
pause
