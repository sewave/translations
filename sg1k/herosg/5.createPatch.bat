@echo off
set T_FILENAME="TR_H.E.R.O. (SG-1000).sg"
set S_FILENAME="H.E.R.O. (SG-1000).sg"
set SCRIPTNAME="herosg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
