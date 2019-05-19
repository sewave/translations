@echo off
set T_FILENAME="TR_Tatsujin (Japan).pce"
set S_FILENAME="Tatsujin (Japan).pce"
set SCRIPTNAME="tatsujinpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
