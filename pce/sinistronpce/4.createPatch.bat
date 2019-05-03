@echo off
set T_FILENAME="TR_Sinistron (U).pce"
set S_FILENAME="Sinistron (U).pce"
set SCRIPTNAME="sinistronpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
