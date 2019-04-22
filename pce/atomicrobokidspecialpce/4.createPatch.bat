@echo off
set T_FILENAME="TR_Atomic Robo-Kid Special (Japan).pce"
set S_FILENAME="Atomic Robo-Kid Special (Japan).pce"
set SCRIPTNAME="atomicrobokidspecialpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
