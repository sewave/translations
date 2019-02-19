@echo off
set T_FILENAME="TR_Vixen 357 (J) [T+ENG].gen"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
