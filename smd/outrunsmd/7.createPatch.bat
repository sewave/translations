@echo off
set T_FILENAME="TR_OutRun (W) [!].gen"
set S_FILENAME="OutRun (W) [!].gen"
set SCRIPTNAME="outrunsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
