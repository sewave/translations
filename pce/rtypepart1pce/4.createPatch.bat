@echo off
set T_FILENAME="TR_R-Type Part-1 (Japan).pce"
set S_FILENAME="R-Type Part-1 (Japan).pce"
set SCRIPTNAME="rtypepart1pce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
