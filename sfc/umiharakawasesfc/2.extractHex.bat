@echo off
set T_FILENAME="TR_Umihara Kawase (Japan) [T+ENG].sfc"
set SCRIPTNAME="umiharakawasesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DC503:100
pause
