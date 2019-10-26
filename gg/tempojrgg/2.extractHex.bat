@echo off
set T_FILENAME="TR_Tempo Jr. (U) [!].gg"
set SCRIPTNAME="tempojrgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 181C0:20,18500:20,185A0:20,160EC:40,161CC:40,164EC:120,194C0:140,49220:40,49400:140
pause
