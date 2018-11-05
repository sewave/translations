@echo off
set T_FILENAME="TR_Parodius (E) [!].nes"
set SCRIPTNAME="parodiusnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BAB0:60,2BBB0:60,2BE70:200,30020:120,378C0:50,37AC0:400,2BA30:90
pause
