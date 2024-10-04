@echo off
set T_FILENAME="TR_Street Fighter II' - Champion Edition (Japan) [T+ENG_Cabbage].pce"
set SCRIPTNAME="streetfighteriichampioneditionpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
