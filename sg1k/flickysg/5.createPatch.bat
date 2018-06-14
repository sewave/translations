@echo off
set T_FILENAME="TR_Flicky (SG-1000).sg"
set S_FILENAME="Flicky (SG-1000).sg"
set SCRIPTNAME="flickysg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
