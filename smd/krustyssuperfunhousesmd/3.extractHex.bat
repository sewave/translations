@echo off
set T_FILENAME="TR_Krusty's Super Funhouse (UE) (REV01) [!].gen"
set SCRIPTNAME="krustyssuperfunhousesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
