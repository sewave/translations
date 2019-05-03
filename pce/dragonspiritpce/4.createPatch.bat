@echo off
set T_FILENAME="TR_Dragon Spirit (U).pce"
set S_FILENAME="Dragon Spirit (U).pce"
set SCRIPTNAME="dragonspiritpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
