@echo off
set T_FILENAME="TR_Simpsons, The - Krusty's Fun House (U) [!].gg"
set SCRIPTNAME="simpsonsthekrustysfunhousegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
