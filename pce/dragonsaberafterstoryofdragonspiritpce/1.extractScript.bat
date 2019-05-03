@echo off
set T_FILENAME="Dragon Saber - After Story of Dragon Spirit (J).pce"
set SCRIPTNAME="dragonsaberafterstoryofdragonspiritpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
