@echo off
set T_FILENAME="TR_Dragon Saber - After Story of Dragon Spirit (J).pce"
set S_FILENAME="Dragon Saber - After Story of Dragon Spirit (J).pce"
set SCRIPTNAME="dragonsaberafterstoryofdragonspiritpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
