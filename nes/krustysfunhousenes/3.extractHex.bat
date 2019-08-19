@echo off
set T_FILENAME="TR_Krusty's Fun House (U) [!].nes"
set SCRIPTNAME="krustysfunhousenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4F0A0:40,4F1D0:40
pause
