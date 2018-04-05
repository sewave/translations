@echo off
set T_FILENAME="TR_Juuouki (J).pce"
set S_FILENAME="Juuouki (J).pce"
set SCRIPTNAME="alteredbeastpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
