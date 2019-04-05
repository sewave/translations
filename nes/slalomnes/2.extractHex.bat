@echo off
set T_FILENAME="TR_Slalom (U) [!].nes"
set SCRIPTNAME="slalomnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9F90:10,96D0:40
pause
