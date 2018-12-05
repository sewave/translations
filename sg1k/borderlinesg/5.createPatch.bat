@echo off
set T_FILENAME="TR_Borderline (SG-1000).sg"
set S_FILENAME="Borderline (SG-1000).sg"
set SCRIPTNAME="borderlinesg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
