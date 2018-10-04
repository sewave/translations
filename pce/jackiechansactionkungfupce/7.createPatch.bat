@echo off
set T_FILENAME="TR_Jackie Chan's Action Kung Fu (U).pce"
set S_FILENAME="Jackie Chan's Action Kung Fu (U).pce"
set SCRIPTNAME="jackiechansactionkungfupce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
