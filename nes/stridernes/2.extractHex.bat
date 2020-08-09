@echo off
set T_FILENAME="TR_Strider (U) [!].nes"
set SCRIPTNAME="stridernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36F10:60,36FB0:20,20190:10,36910:F0,200D0:10,1F040:80,37240:80,36E60:20,368B0:60
pause
