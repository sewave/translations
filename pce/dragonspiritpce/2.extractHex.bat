@echo off
set T_FILENAME="TR_Dragon Spirit (U).pce"
set SCRIPTNAME="dragonspiritpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 34100:100,96C:100,20F4:80
pause
