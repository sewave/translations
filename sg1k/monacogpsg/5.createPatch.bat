@echo off
set T_FILENAME="TR_Monaco GP (SG-1000).sg"
set S_FILENAME="Monaco GP (SG-1000).sg"
set SCRIPTNAME="monacogpsg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
