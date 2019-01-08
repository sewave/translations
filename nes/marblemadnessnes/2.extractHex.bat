@echo off
set T_FILENAME="TR_Marble Madness (U) [!].nes"
set SCRIPTNAME="marblemadnessnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
