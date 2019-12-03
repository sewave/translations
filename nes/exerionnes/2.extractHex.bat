@echo off
set T_FILENAME="TR_Exerion (J) [!].nes"
set SCRIPTNAME="exerionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4200:100,5200:100
pause
