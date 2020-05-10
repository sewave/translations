@echo off
set T_FILENAME="TR_GG Aleste (J).gg"
set SCRIPTNAME="ggalestegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
