@echo off
set T_FILENAME="TR_Sqoon (U) [!].nes"
set SCRIPTNAME="sqoonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
