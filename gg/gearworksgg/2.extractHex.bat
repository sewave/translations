@echo off
set T_FILENAME="TR_Gear Works (U) [!].gg"
set SCRIPTNAME="gearworksgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AE66:A0,1C0C4:100
pause
