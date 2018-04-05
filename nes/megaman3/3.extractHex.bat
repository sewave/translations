@echo off
set T_FILENAME="TR_Megaman III (U) [!].nes"
set SCRIPTNAME="megaman3"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5D3B0:B0,5F350:10
pause
