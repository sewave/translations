@echo off
set T_FILENAME="TR_OutRun (JU).gg"
set S_FILENAME="OutRun (JU).gg"
set SCRIPTNAME="outrungg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
