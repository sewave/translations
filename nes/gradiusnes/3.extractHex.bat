@echo off
set T_FILENAME="TR_Gradius (U) [!].nes"
set SCRIPTNAME="gradiusnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A0A0-A1E0,
pause
