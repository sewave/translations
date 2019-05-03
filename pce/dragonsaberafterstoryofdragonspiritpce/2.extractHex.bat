@echo off
set T_FILENAME="TR_Dragon Saber - After Story of Dragon Spirit (J).pce"
set SCRIPTNAME="dragonsaberafterstoryofdragonspiritpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
