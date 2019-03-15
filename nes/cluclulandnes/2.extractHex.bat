@echo off
set T_FILENAME="TR_Clu Clu Land (W) [!].nes"
set SCRIPTNAME="cluclulandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5270:80,5B60:30,5240:10
pause
