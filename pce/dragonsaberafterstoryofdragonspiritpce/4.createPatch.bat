@echo off
set T_FILENAME="TR_Dragon Saber - After Story of Dragon Spirit (J).pce"
set S_FILENAME="Dragon Saber - After Story of Dragon Spirit (J).pce"
set SCRIPTNAME="dragonsaberafterstoryofdragonspiritpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
