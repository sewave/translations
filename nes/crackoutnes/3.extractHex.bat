@echo off
set T_FILENAME="TR_Crackout (U) (Prototype).nes"
set SCRIPTNAME="crackoutnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
