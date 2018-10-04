@echo off
set T_FILENAME="TR_OutRun (J).pce"
set S_FILENAME="OutRun (J).pce"
set SCRIPTNAME="outrunpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
