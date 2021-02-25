@echo off
set T_FILENAME="TR_Ki no Bouken - The Quest of Ki (Japan) [T+ENG].nes"
set SCRIPTNAME="kinoboukenthequestofkines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 229B0:60,20C10:140
pause
