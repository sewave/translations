@echo off
set T_FILENAME="TR_Golgo 13 (SG-1000).sg"
set S_FILENAME="Golgo 13 (SG-1000).sg"
set SCRIPTNAME="golgo13sg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
