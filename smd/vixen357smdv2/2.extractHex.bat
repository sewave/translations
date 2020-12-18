@echo off
set T_FILENAME="TR_Vixen 357 (Japan) [T+ENG].md"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11A200:200,116C00:600
pause
