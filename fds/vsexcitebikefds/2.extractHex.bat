@echo off
set T_FILENAME="TR_Vs. Excitebike (Japan).fds"
set SCRIPTNAME="vsexcitebikefds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9FEF:40,1CD4A:30,1845D:50
pause
