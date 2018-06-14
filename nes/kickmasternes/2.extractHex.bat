@echo off
set T_FILENAME="TR_Kick Master (U) [!].nes"
set SCRIPTNAME="kickmasternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20410:200,207B0:10,210B0:20,211B0:20,212B0:20,213B0:20,21810:40,21910:40,21A50:40,21B50:40,
pause
