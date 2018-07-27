@echo off
set T_FILENAME="TR_Gain Ground (UE) [c][!].gen"
set S_FILENAME="Gain Ground (UE) [c][!].gen"
set SCRIPTNAME="gaingroundsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
