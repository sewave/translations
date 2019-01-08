@echo off
set T_FILENAME="TR_Marble Madness (U).gg"
set SCRIPTNAME="marblemadnessgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
