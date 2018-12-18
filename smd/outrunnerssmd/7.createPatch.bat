@echo off
set T_FILENAME="TR_OutRunners (U) [!].gen"
set S_FILENAME="OutRunners (U) [!].gen"
set SCRIPTNAME="outrunnerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
