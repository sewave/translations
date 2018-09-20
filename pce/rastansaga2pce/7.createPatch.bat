@echo off
set T_FILENAME="TR_Rastan Saga II (Japan).pce"
set S_FILENAME="Rastan Saga II (Japan).pce"
set SCRIPTNAME="rastansaga2pce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
