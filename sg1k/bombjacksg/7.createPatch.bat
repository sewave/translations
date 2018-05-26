@echo off
set T_FILENAME="TR_Bomb Jack (SG-1000).sg"
set S_FILENAME="Bomb Jack (SG-1000).sg"
set SCRIPTNAME="bombjacksg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
