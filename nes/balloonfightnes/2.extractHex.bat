@echo off
set T_FILENAME="TR_Balloon Fight (U) [!].nes"
set SCRIPTNAME="balloonfightnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F80:50,5420:10,58D0:20
pause
